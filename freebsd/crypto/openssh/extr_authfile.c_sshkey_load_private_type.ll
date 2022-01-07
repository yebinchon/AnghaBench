; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_private_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_private_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_KEY_BAD_PERMISSIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_load_private_type(i32 %0, i8* %1, i8* %2, %struct.sshkey** %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sshkey**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.sshkey** %3, %struct.sshkey*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.sshkey**, %struct.sshkey*** %11, align 8
  %17 = icmp ne %struct.sshkey** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load %struct.sshkey**, %struct.sshkey*** %11, align 8
  store %struct.sshkey* null, %struct.sshkey** %19, align 8
  br label %20

20:                                               ; preds = %18, %6
  %21 = load i8**, i8*** %12, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i8**, i8*** %12, align 8
  store i8* null, i8** %24, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = call i32 @open(i8* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32*, i32** %13, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %36, i32* %7, align 4
  br label %80

37:                                               ; preds = %25
  %38 = load i32, i32* %14, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @sshkey_perm_ok(i32 %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %13, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* @SSH_ERR_KEY_BAD_PERMISSIONS, align 4
  store i32 %48, i32* %15, align 4
  br label %76

49:                                               ; preds = %37
  %50 = load i32*, i32** %13, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32*, i32** %13, align 8
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.sshkey**, %struct.sshkey*** %11, align 8
  %59 = load i8**, i8*** %12, align 8
  %60 = call i32 @sshkey_load_private_type_fd(i32 %55, i32 %56, i8* %57, %struct.sshkey** %58, i8** %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %54
  %64 = load %struct.sshkey**, %struct.sshkey*** %11, align 8
  %65 = icmp ne %struct.sshkey** %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.sshkey**, %struct.sshkey*** %11, align 8
  %68 = load %struct.sshkey*, %struct.sshkey** %67, align 8
  %69 = icmp ne %struct.sshkey* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.sshkey**, %struct.sshkey*** %11, align 8
  %72 = load %struct.sshkey*, %struct.sshkey** %71, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @sshkey_set_filename(%struct.sshkey* %72, i8* %73)
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %70, %66, %63, %54
  br label %76

76:                                               ; preds = %75, %47
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %35
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @sshkey_perm_ok(i32, i8*) #1

declare dso_local i32 @sshkey_load_private_type_fd(i32, i32, i8*, %struct.sshkey**, i8**) #1

declare dso_local i32 @sshkey_set_filename(%struct.sshkey*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
