; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c_pjdlog_prefix_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c_pjdlog_prefix_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pjdlog_initialized = common dso_local global i64 0, align 8
@PJDLOG_INITIALIZED = common dso_local global i64 0, align 8
@pjdlog_prefix = common dso_local global i8** null, align 8
@pjdlog_prefix_current = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pjdlog_prefix_get() #0 {
  %1 = load i64, i64* @pjdlog_initialized, align 8
  %2 = load i64, i64* @PJDLOG_INITIALIZED, align 8
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert(i32 %4)
  %6 = load i8**, i8*** @pjdlog_prefix, align 8
  %7 = load i64, i64* @pjdlog_prefix_current, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  %9 = load i8*, i8** %8, align 8
  ret i8* %9
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
