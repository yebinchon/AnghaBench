; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_semb_print_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_semb_print_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_identify_data = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c" SEMB %s %s device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @semb_print_ident(%struct.sep_identify_data* %0) #0 {
  %2 = alloca %struct.sep_identify_data*, align 8
  %3 = alloca [7 x i8], align 1
  %4 = alloca [5 x i8], align 1
  store %struct.sep_identify_data* %0, %struct.sep_identify_data** %2, align 8
  %5 = load %struct.sep_identify_data*, %struct.sep_identify_data** %2, align 8
  %6 = call i32 @semb_print_ident_short(%struct.sep_identify_data* %5)
  %7 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %8 = load %struct.sep_identify_data*, %struct.sep_identify_data** %2, align 8
  %9 = getelementptr inbounds %struct.sep_identify_data, %struct.sep_identify_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cam_strvis(i8* %7, i32 %10, i32 6, i32 7)
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %13 = load %struct.sep_identify_data*, %struct.sep_identify_data** %2, align 8
  %14 = getelementptr inbounds %struct.sep_identify_data, %struct.sep_identify_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cam_strvis(i8* %12, i32 %15, i32 4, i32 5)
  %17 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %19 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  ret void
}

declare dso_local i32 @semb_print_ident_short(%struct.sep_identify_data*) #1

declare dso_local i32 @cam_strvis(i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
