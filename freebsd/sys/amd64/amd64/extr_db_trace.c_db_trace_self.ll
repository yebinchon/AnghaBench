; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_trace_self.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_trace_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_frame = type { %struct.amd64_frame*, i32 }

@FALSE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_trace_self() #0 {
  %1 = alloca %struct.amd64_frame*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 asm sideeffect "movq %rbp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to %struct.amd64_frame*
  store %struct.amd64_frame* %6, %struct.amd64_frame** %1, align 8
  %7 = load %struct.amd64_frame*, %struct.amd64_frame** %1, align 8
  %8 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %7, i32 0, i32 1
  %9 = ptrtoint i32* %8 to i64
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i64 @db_get_value(i64 %9, i32 8, i32 %10)
  store i64 %11, i64* %2, align 8
  %12 = load %struct.amd64_frame*, %struct.amd64_frame** %1, align 8
  %13 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %12, i32 0, i32 0
  %14 = load %struct.amd64_frame*, %struct.amd64_frame** %13, align 8
  store %struct.amd64_frame* %14, %struct.amd64_frame** %1, align 8
  %15 = load i32, i32* @curthread, align 4
  %16 = load %struct.amd64_frame*, %struct.amd64_frame** %1, align 8
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @db_backtrace(i32 %15, i32* null, %struct.amd64_frame* %16, i64 %17, i32 0, i32 -1)
  ret void
}

declare dso_local i64 @db_get_value(i64, i32, i32) #1

declare dso_local i32 @db_backtrace(i32, i32*, %struct.amd64_frame*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 529}
