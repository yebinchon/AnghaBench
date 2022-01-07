; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_dispatch.c_openpam_check_error_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_dispatch.c_openpam_check_error_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4
@PAM_SERVICE_ERR = common dso_local global i32 0, align 4
@PAM_BUF_ERR = common dso_local global i32 0, align 4
@PAM_CONV_ERR = common dso_local global i32 0, align 4
@PAM_PERM_DENIED = common dso_local global i32 0, align 4
@PAM_ABORT = common dso_local global i32 0, align 4
@PAM_AUTH_ERR = common dso_local global i32 0, align 4
@PAM_CRED_INSUFFICIENT = common dso_local global i32 0, align 4
@PAM_AUTHINFO_UNAVAIL = common dso_local global i32 0, align 4
@PAM_USER_UNKNOWN = common dso_local global i32 0, align 4
@PAM_MAXTRIES = common dso_local global i32 0, align 4
@PAM_CRED_UNAVAIL = common dso_local global i32 0, align 4
@PAM_CRED_EXPIRED = common dso_local global i32 0, align 4
@PAM_CRED_ERR = common dso_local global i32 0, align 4
@PAM_NEW_AUTHTOK_REQD = common dso_local global i32 0, align 4
@PAM_ACCT_EXPIRED = common dso_local global i32 0, align 4
@PAM_SESSION_ERR = common dso_local global i32 0, align 4
@PAM_AUTHTOK_ERR = common dso_local global i32 0, align 4
@PAM_AUTHTOK_RECOVERY_ERR = common dso_local global i32 0, align 4
@PAM_AUTHTOK_LOCK_BUSY = common dso_local global i32 0, align 4
@PAM_AUTHTOK_DISABLE_AGING = common dso_local global i32 0, align 4
@PAM_TRY_AGAIN = common dso_local global i32 0, align 4
@PAM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s(): unexpected return value %d\00", align 1
@pam_sm_func_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @openpam_check_error_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openpam_check_error_code(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PAM_SUCCESS, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PAM_SERVICE_ERR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PAM_BUF_ERR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PAM_CONV_ERR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PAM_PERM_DENIED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PAM_ABORT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %20, %16, %12, %8, %2
  br label %134

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  switch i32 %34, label %125 [
    i32 132, label %35
    i32 128, label %57
    i32 133, label %75
    i32 129, label %93
    i32 130, label %93
    i32 131, label %99
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PAM_AUTH_ERR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PAM_CRED_INSUFFICIENT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PAM_AUTHINFO_UNAVAIL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @PAM_USER_UNKNOWN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @PAM_MAXTRIES, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47, %43, %39, %35
  br label %134

56:                                               ; preds = %51
  br label %125

57:                                               ; preds = %33
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PAM_CRED_UNAVAIL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @PAM_CRED_EXPIRED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PAM_USER_UNKNOWN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @PAM_CRED_ERR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65, %61, %57
  br label %134

74:                                               ; preds = %69
  br label %125

75:                                               ; preds = %33
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @PAM_USER_UNKNOWN, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @PAM_AUTH_ERR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @PAM_NEW_AUTHTOK_REQD, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @PAM_ACCT_EXPIRED, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %83, %79, %75
  br label %134

92:                                               ; preds = %87
  br label %125

93:                                               ; preds = %33, %33
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @PAM_SESSION_ERR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %134

98:                                               ; preds = %93
  br label %125

99:                                               ; preds = %33
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @PAM_PERM_DENIED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %123, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @PAM_AUTHTOK_ERR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %123, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @PAM_AUTHTOK_RECOVERY_ERR, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %123, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @PAM_AUTHTOK_LOCK_BUSY, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @PAM_AUTHTOK_DISABLE_AGING, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @PAM_TRY_AGAIN, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %115, %111, %107, %103, %99
  br label %134

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %33, %124, %98, %92, %74, %56
  %126 = load i32, i32* @PAM_LOG_ERROR, align 4
  %127 = load i32*, i32** @pam_sm_func_name, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @openpam_log(i32 %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %125, %123, %97, %91, %73, %55, %32
  ret void
}

declare dso_local i32 @openpam_log(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
