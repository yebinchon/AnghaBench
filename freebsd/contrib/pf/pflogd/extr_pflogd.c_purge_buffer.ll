; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_purge_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_purge_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bufpkt = common dso_local global i64 0, align 8
@packets_dropped = common dso_local global i32 0, align 4
@buffer = common dso_local global i32 0, align 4
@bufpos = common dso_local global i32 0, align 4
@buflen = common dso_local global i32 0, align 4
@bufleft = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @purge_buffer() #0 {
  %1 = load i64, i64* @bufpkt, align 8
  %2 = load i32, i32* @packets_dropped, align 4
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, %1
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* @packets_dropped, align 4
  %6 = call i32 @set_suspended(i32 0)
  %7 = load i32, i32* @buffer, align 4
  store i32 %7, i32* @bufpos, align 4
  %8 = load i32, i32* @buflen, align 4
  store i32 %8, i32* @bufleft, align 4
  store i64 0, i64* @bufpkt, align 8
  ret void
}

declare dso_local i32 @set_suspended(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
