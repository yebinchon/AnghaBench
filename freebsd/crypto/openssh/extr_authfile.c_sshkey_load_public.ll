; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@KEY_UNSPEC = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.pub\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_load_public(i8* %0, %struct.sshkey** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sshkey**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sshkey** %1, %struct.sshkey*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store %struct.sshkey* null, %struct.sshkey** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load %struct.sshkey**, %struct.sshkey*** %6, align 8
  %12 = icmp ne %struct.sshkey** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.sshkey**, %struct.sshkey*** %6, align 8
  store %struct.sshkey* null, %struct.sshkey** %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i8**, i8*** %7, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i8**, i8*** %7, align 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @KEY_UNSPEC, align 4
  %22 = call %struct.sshkey* @sshkey_new(i32 %21)
  store %struct.sshkey* %22, %struct.sshkey** %8, align 8
  %23 = icmp eq %struct.sshkey* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %20
  %27 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = call i32 @sshkey_try_load_public(%struct.sshkey* %27, i8* %28, i8** %29)
  store i32 %30, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.sshkey**, %struct.sshkey*** %6, align 8
  %34 = icmp ne %struct.sshkey** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %37 = load %struct.sshkey**, %struct.sshkey*** %6, align 8
  store %struct.sshkey* %36, %struct.sshkey** %37, align 8
  store %struct.sshkey* null, %struct.sshkey** %8, align 8
  br label %38

38:                                               ; preds = %35, %32
  store i32 0, i32* %10, align 4
  br label %67

39:                                               ; preds = %26
  %40 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %41 = call i32 @sshkey_free(%struct.sshkey* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %46, i32* %4, align 4
  br label %73

47:                                               ; preds = %39
  %48 = load i32, i32* @KEY_UNSPEC, align 4
  %49 = call %struct.sshkey* @sshkey_new(i32 %48)
  store %struct.sshkey* %49, %struct.sshkey** %8, align 8
  %50 = icmp eq %struct.sshkey* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %52, i32* %10, align 4
  br label %67

53:                                               ; preds = %47
  %54 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8**, i8*** %7, align 8
  %57 = call i32 @sshkey_try_load_public(%struct.sshkey* %54, i8* %55, i8** %56)
  store i32 %57, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.sshkey**, %struct.sshkey*** %6, align 8
  %61 = icmp ne %struct.sshkey** %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %64 = load %struct.sshkey**, %struct.sshkey*** %6, align 8
  store %struct.sshkey* %63, %struct.sshkey** %64, align 8
  store %struct.sshkey* null, %struct.sshkey** %8, align 8
  br label %65

65:                                               ; preds = %62, %59
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %53
  br label %67

67:                                               ; preds = %66, %51, %38
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %71 = call i32 @sshkey_free(%struct.sshkey* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %45, %24
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.sshkey* @sshkey_new(i32) #1

declare dso_local i32 @sshkey_try_load_public(%struct.sshkey*, i8*, i8**) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
