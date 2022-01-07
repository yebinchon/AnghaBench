; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openmp/runtime/src/thirdparty/ittnotify/extr_ittnotify_static.c___itt_get_lib_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openmp/runtime/src/thirdparty/ittnotify/extr_ittnotify_static.c___itt_get_lib_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIB_VAR_NAME = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @__itt_get_lib_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__itt_get_lib_name() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @LIB_VAR_NAME, align 4
  %3 = call i32 @ITT_TO_STR(i32 %2)
  %4 = call i8* @__itt_get_env_var(i32 %3)
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  ret i8* %5
}

declare dso_local i8* @__itt_get_env_var(i32) #1

declare dso_local i32 @ITT_TO_STR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
