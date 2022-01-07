; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_restore_cred.c_openpam_restore_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_restore_cred.c_openpam_restore_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pam_saved_cred = type { i64, i32, i32, i32 }

@PAM_SAVED_CRED = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpam_restore_cred(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pam_saved_cred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 (...) @ENTER()
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @PAM_SAVED_CRED, align 4
  %10 = call i32 @pam_get_data(i32* %8, i32 %9, i8** %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PAM_SUCCESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @RETURNC(i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %22 = call i32 @RETURNC(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.pam_saved_cred*
  store %struct.pam_saved_cred* %25, %struct.pam_saved_cred** %4, align 8
  %26 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %4, align 8
  %27 = getelementptr inbounds %struct.pam_saved_cred, %struct.pam_saved_cred* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 (...) @geteuid()
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %23
  %32 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %4, align 8
  %33 = getelementptr inbounds %struct.pam_saved_cred, %struct.pam_saved_cred* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @seteuid(i64 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %31
  %38 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %4, align 8
  %39 = getelementptr inbounds %struct.pam_saved_cred, %struct.pam_saved_cred* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %4, align 8
  %42 = getelementptr inbounds %struct.pam_saved_cred, %struct.pam_saved_cred* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @setgroups(i32 %40, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %4, align 8
  %48 = getelementptr inbounds %struct.pam_saved_cred, %struct.pam_saved_cred* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @setegid(i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %37, %31
  %53 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %54 = call i32 @RETURNC(i32 %53)
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @PAM_SAVED_CRED, align 4
  %59 = call i32 @pam_set_data(i32* %57, i32 %58, i32* null, i32* null)
  %60 = load i32, i32* @PAM_SUCCESS, align 4
  %61 = call i32 @RETURNC(i32 %60)
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @pam_get_data(i32*, i32, i8**) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @seteuid(i64) #1

declare dso_local i64 @setgroups(i32, i32) #1

declare dso_local i64 @setegid(i32) #1

declare dso_local i32 @pam_set_data(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
