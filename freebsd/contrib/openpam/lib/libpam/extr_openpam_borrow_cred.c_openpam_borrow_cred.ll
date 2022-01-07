; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_borrow_cred.c_openpam_borrow_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_borrow_cred.c_openpam_borrow_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i32, i32 }
%struct.pam_saved_cred = type { i32, i32, i32, i64 }

@PAM_SAVED_CRED = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_LOG_LIBDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"already operating under borrowed credentials\00", align 1
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"called with non-zero euid: %d\00", align 1
@PAM_PERM_DENIED = common dso_local global i32 0, align 4
@PAM_BUF_ERR = common dso_local global i32 0, align 4
@NGROUPS_MAX = common dso_local global i32 0, align 4
@openpam_free_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpam_borrow_cred(i32* %0, %struct.passwd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca %struct.pam_saved_cred*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  %9 = load %struct.passwd*, %struct.passwd** %5, align 8
  %10 = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @ENTERI(i64 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @PAM_SAVED_CRED, align 4
  %15 = call i32 @pam_get_data(i32* %13, i32 %14, i8** %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PAM_SUCCESS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @PAM_LOG_LIBDEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @openpam_log(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %26 = call i32 @RETURNC(i32 %25)
  br label %27

27:                                               ; preds = %22, %19, %2
  %28 = call i64 (...) @geteuid()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = call i64 (...) @geteuid()
  %32 = load %struct.passwd*, %struct.passwd** %5, align 8
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @PAM_LOG_LIBDEBUG, align 4
  %38 = call i64 (...) @geteuid()
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i32, i8*, ...) @openpam_log(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @PAM_PERM_DENIED, align 4
  %42 = call i32 @RETURNC(i32 %41)
  br label %43

43:                                               ; preds = %36, %30, %27
  %44 = call %struct.pam_saved_cred* @calloc(i32 1, i32 24)
  store %struct.pam_saved_cred* %44, %struct.pam_saved_cred** %6, align 8
  %45 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %6, align 8
  %46 = icmp eq %struct.pam_saved_cred* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @PAM_BUF_ERR, align 4
  %49 = call i32 @RETURNC(i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = call i64 (...) @geteuid()
  %52 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %6, align 8
  %53 = getelementptr inbounds %struct.pam_saved_cred, %struct.pam_saved_cred* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = call i32 (...) @getegid()
  %55 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %6, align 8
  %56 = getelementptr inbounds %struct.pam_saved_cred, %struct.pam_saved_cred* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @NGROUPS_MAX, align 4
  %58 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %6, align 8
  %59 = getelementptr inbounds %struct.pam_saved_cred, %struct.pam_saved_cred* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @getgroups(i32 %57, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %6, align 8
  %66 = call i32 @FREE(%struct.pam_saved_cred* %65)
  %67 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %68 = call i32 @RETURNC(i32 %67)
  br label %69

69:                                               ; preds = %64, %50
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %6, align 8
  %72 = getelementptr inbounds %struct.pam_saved_cred, %struct.pam_saved_cred* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @PAM_SAVED_CRED, align 4
  %75 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %6, align 8
  %76 = call i32 @pam_set_data(i32* %73, i32 %74, %struct.pam_saved_cred* %75, i32* @openpam_free_data)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @PAM_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load %struct.pam_saved_cred*, %struct.pam_saved_cred** %6, align 8
  %82 = call i32 @FREE(%struct.pam_saved_cred* %81)
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @RETURNC(i32 %83)
  br label %85

85:                                               ; preds = %80, %69
  %86 = call i64 (...) @geteuid()
  %87 = load %struct.passwd*, %struct.passwd** %5, align 8
  %88 = getelementptr inbounds %struct.passwd, %struct.passwd* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @PAM_SUCCESS, align 4
  %93 = call i32 @RETURNC(i32 %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.passwd*, %struct.passwd** %5, align 8
  %96 = getelementptr inbounds %struct.passwd, %struct.passwd* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.passwd*, %struct.passwd** %5, align 8
  %99 = getelementptr inbounds %struct.passwd, %struct.passwd* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @initgroups(i32 %97, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %94
  %104 = load %struct.passwd*, %struct.passwd** %5, align 8
  %105 = getelementptr inbounds %struct.passwd, %struct.passwd* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @setegid(i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.passwd*, %struct.passwd** %5, align 8
  %111 = getelementptr inbounds %struct.passwd, %struct.passwd* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @seteuid(i64 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109, %103, %94
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @openpam_restore_cred(i32* %116)
  %118 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %119 = call i32 @RETURNC(i32 %118)
  br label %120

120:                                              ; preds = %115, %109
  %121 = load i32, i32* @PAM_SUCCESS, align 4
  %122 = call i32 @RETURNC(i32 %121)
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @ENTERI(i64) #1

declare dso_local i32 @pam_get_data(i32*, i32, i8**) #1

declare dso_local i32 @openpam_log(i32, i8*, ...) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local %struct.pam_saved_cred* @calloc(i32, i32) #1

declare dso_local i32 @getegid(...) #1

declare dso_local i32 @getgroups(i32, i32) #1

declare dso_local i32 @FREE(%struct.pam_saved_cred*) #1

declare dso_local i32 @pam_set_data(i32*, i32, %struct.pam_saved_cred*, i32*) #1

declare dso_local i64 @initgroups(i32, i32) #1

declare dso_local i64 @setegid(i32) #1

declare dso_local i64 @seteuid(i64) #1

declare dso_local i32 @openpam_restore_cred(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
