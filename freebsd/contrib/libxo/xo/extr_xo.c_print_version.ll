; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/xo/extr_xo.c_print_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/xo/extr_xo.c_print_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"libxo version %s%s\0A\00", align 1
@xo_version = common dso_local global i8* null, align 8
@xo_version_extra = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"xo version %s%s\0A\00", align 1
@LIBXO_VERSION = common dso_local global i8* null, align 8
@LIBXO_VERSION_EXTRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_version() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @xo_version, align 8
  %3 = load i32, i32* @xo_version_extra, align 4
  %4 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %2, i32 %3)
  %5 = load i32, i32* @stderr, align 4
  %6 = load i8*, i8** @LIBXO_VERSION, align 8
  %7 = load i32, i32* @LIBXO_VERSION_EXTRA, align 4
  %8 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %6, i32 %7)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
