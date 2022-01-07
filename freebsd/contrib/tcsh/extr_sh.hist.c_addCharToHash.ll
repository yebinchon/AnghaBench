; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_addCharToHash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_addCharToHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashValue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashValue*, i64)* @addCharToHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addCharToHash(%struct.hashValue* %0, i64 %1) #0 {
  %3 = alloca %struct.hashValue*, align 8
  %4 = alloca i64, align 8
  store %struct.hashValue* %0, %struct.hashValue** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %7 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %5
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %13 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %16 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %19 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mix(i32 %14, i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @mix(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
