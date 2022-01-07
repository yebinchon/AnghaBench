; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_amd64_db_resume_dbreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_amd64_db_resume_dbreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbreg = type { i32 }

@dbreg_cmd = common dso_local global i32 0, align 4
@dbreg = common dso_local global i32 0, align 4
@PC_DBREG_CMD_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64_db_resume_dbreg() #0 {
  %1 = alloca %struct.dbreg*, align 8
  %2 = load i32, i32* @dbreg_cmd, align 4
  %3 = call i32 @PCPU_GET(i32 %2)
  switch i32 %3, label %13 [
    i32 128, label %4
  ]

4:                                                ; preds = %0
  %5 = load i32, i32* @dbreg, align 4
  %6 = call i64 @PCPU_PTR(i32 %5)
  %7 = inttoptr i64 %6 to %struct.dbreg*
  store %struct.dbreg* %7, %struct.dbreg** %1, align 8
  %8 = load %struct.dbreg*, %struct.dbreg** %1, align 8
  %9 = call i32 @set_dbregs(i32* null, %struct.dbreg* %8)
  %10 = load i32, i32* @dbreg_cmd, align 4
  %11 = load i32, i32* @PC_DBREG_CMD_NONE, align 4
  %12 = call i32 @PCPU_SET(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %0, %4
  ret void
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i64 @PCPU_PTR(i32) #1

declare dso_local i32 @set_dbregs(i32*, %struct.dbreg*) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
