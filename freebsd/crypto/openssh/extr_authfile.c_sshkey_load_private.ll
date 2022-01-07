; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_KEY_BAD_PERMISSIONS = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_load_private(i8* %0, i8* %1, %struct.sshkey** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sshkey**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.sshbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sshkey** %2, %struct.sshkey*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %10, align 8
  %13 = load %struct.sshkey**, %struct.sshkey*** %8, align 8
  %14 = icmp ne %struct.sshkey** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load %struct.sshkey**, %struct.sshkey*** %8, align 8
  store %struct.sshkey* null, %struct.sshkey** %16, align 8
  br label %17

17:                                               ; preds = %15, %4
  %18 = load i8**, i8*** %9, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8**, i8*** %9, align 8
  store i8* null, i8** %21, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i8* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %28, i32* %5, align 4
  br label %75

29:                                               ; preds = %22
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @sshkey_perm_ok(i32 %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @SSH_ERR_KEY_BAD_PERMISSIONS, align 4
  store i32 %35, i32* %11, align 4
  br label %69

36:                                               ; preds = %29
  %37 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %37, %struct.sshbuf** %10, align 8
  %38 = icmp eq %struct.sshbuf* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %40, i32* %11, align 4
  br label %69

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %44 = call i32 @sshkey_load_file(i32 %42, %struct.sshbuf* %43)
  store i32 %44, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.sshkey**, %struct.sshkey*** %8, align 8
  %50 = load i8**, i8*** %9, align 8
  %51 = call i32 @sshkey_parse_private_fileblob(%struct.sshbuf* %47, i8* %48, %struct.sshkey** %49, i8** %50)
  store i32 %51, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %41
  br label %69

54:                                               ; preds = %46
  %55 = load %struct.sshkey**, %struct.sshkey*** %8, align 8
  %56 = icmp ne %struct.sshkey** %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.sshkey**, %struct.sshkey*** %8, align 8
  %59 = load %struct.sshkey*, %struct.sshkey** %58, align 8
  %60 = icmp ne %struct.sshkey* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.sshkey**, %struct.sshkey*** %8, align 8
  %63 = load %struct.sshkey*, %struct.sshkey** %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @sshkey_set_filename(%struct.sshkey* %63, i8* %64)
  store i32 %65, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %69

68:                                               ; preds = %61, %57, %54
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %67, %53, %39, %34
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %73 = call i32 @sshbuf_free(%struct.sshbuf* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %27
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @sshkey_perm_ok(i32, i8*) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshkey_load_file(i32, %struct.sshbuf*) #1

declare dso_local i32 @sshkey_parse_private_fileblob(%struct.sshbuf*, i8*, %struct.sshkey**, i8**) #1

declare dso_local i32 @sshkey_set_filename(%struct.sshkey*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
