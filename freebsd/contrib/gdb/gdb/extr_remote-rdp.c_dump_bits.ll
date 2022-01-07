; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_dump_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_dump_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yn = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"  %-45s : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.yn*, i32)* @dump_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_bits(%struct.yn* %0, i32 %1) #0 {
  %3 = alloca %struct.yn*, align 8
  %4 = alloca i32, align 4
  store %struct.yn* %0, %struct.yn** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %10, %2
  %6 = load %struct.yn*, %struct.yn** %3, align 8
  %7 = getelementptr inbounds %struct.yn, %struct.yn* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = load %struct.yn*, %struct.yn** %3, align 8
  %12 = getelementptr inbounds %struct.yn, %struct.yn* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.yn*, %struct.yn** %3, align 8
  %16 = getelementptr inbounds %struct.yn, %struct.yn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %13, i8* %21)
  %23 = load %struct.yn*, %struct.yn** %3, align 8
  %24 = getelementptr inbounds %struct.yn, %struct.yn* %23, i32 1
  store %struct.yn* %24, %struct.yn** %3, align 8
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
