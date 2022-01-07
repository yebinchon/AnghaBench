; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_print_ident_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_print_ident_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"<%s %s>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_print_ident_short(%struct.ata_params* %0) #0 {
  %2 = alloca %struct.ata_params*, align 8
  %3 = alloca [48 x i8], align 16
  %4 = alloca [16 x i8], align 16
  store %struct.ata_params* %0, %struct.ata_params** %2, align 8
  %5 = getelementptr inbounds [48 x i8], [48 x i8]* %3, i64 0, i64 0
  %6 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %7 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @cam_strvis(i8* %5, i32 %8, i32 4, i32 48)
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %11 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %12 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cam_strvis(i8* %10, i32 %13, i32 4, i32 16)
  %15 = getelementptr inbounds [48 x i8], [48 x i8]* %3, i64 0, i64 0
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %17 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  ret void
}

declare dso_local i32 @cam_strvis(i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
