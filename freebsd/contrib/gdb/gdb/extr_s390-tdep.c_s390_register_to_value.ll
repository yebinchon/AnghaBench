; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_register_to_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_register_to_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i32, %struct.type*, i8*)* @s390_register_to_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_register_to_value(%struct.frame_info* %0, i32 %1, %struct.type* %2, i8* %3) #0 {
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.type* %2, %struct.type** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.type*, %struct.type** %7, align 8
  %12 = call i32 @TYPE_LENGTH(%struct.type* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 8
  %15 = zext i1 %14 to i32
  %16 = call i32 @gdb_assert(i32 %15)
  %17 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %20 = call i32 @get_frame_register(%struct.frame_info* %17, i32 %18, i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @memcpy(i8* %21, i8* %22, i32 %23)
  ret void
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @get_frame_register(%struct.frame_info*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
