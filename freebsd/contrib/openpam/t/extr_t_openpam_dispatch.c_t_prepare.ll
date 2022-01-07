; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/t/extr_t_openpam_dispatch.c_t_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/t/extr_t_openpam_dispatch.c_t_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"PAM_RETURN_SO\00", align 1
@pam_return_so = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"define PAM_RETURN_SO before running these tests\0A\00", align 1
@OPENPAM_RESTRICT_MODULE_NAME = common dso_local global i32 0, align 4
@OPENPAM_VERIFY_MODULE_FILE = common dso_local global i32 0, align 4
@OPENPAM_RESTRICT_SERVICE_NAME = common dso_local global i32 0, align 4
@OPENPAM_VERIFY_POLICY_FILE = common dso_local global i32 0, align 4
@OPENPAM_FALLBACK_TO_OTHER = common dso_local global i32 0, align 4
@empty_policy = common dso_local global i32 0, align 4
@mod_return = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @t_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_prepare(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8**, i8*** %5, align 8
  %8 = call i32* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** @pam_return_so, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @t_printv(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* @OPENPAM_RESTRICT_MODULE_NAME, align 4
  %14 = call i32 @openpam_set_feature(i32 %13, i32 0)
  %15 = load i32, i32* @OPENPAM_VERIFY_MODULE_FILE, align 4
  %16 = call i32 @openpam_set_feature(i32 %15, i32 0)
  %17 = load i32, i32* @OPENPAM_RESTRICT_SERVICE_NAME, align 4
  %18 = call i32 @openpam_set_feature(i32 %17, i32 0)
  %19 = load i32, i32* @OPENPAM_VERIFY_POLICY_FILE, align 4
  %20 = call i32 @openpam_set_feature(i32 %19, i32 0)
  %21 = load i32, i32* @OPENPAM_FALLBACK_TO_OTHER, align 4
  %22 = call i32 @openpam_set_feature(i32 %21, i32 0)
  %23 = load i32, i32* @empty_policy, align 4
  %24 = call i32 @T(i32 %23)
  %25 = load i32, i32* @mod_return, align 4
  %26 = call i32 @T(i32 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %12, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @t_printv(i8*) #1

declare dso_local i32 @openpam_set_feature(i32, i32) #1

declare dso_local i32 @T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
