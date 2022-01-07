; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_pfctl_add_trans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_pfctl_add_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_buffer = type { i32 }
%struct.pfioc_trans_e = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"pfctl_add_trans: strlcpy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_add_trans(%struct.pfr_buffer* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pfr_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pfioc_trans_e, align 4
  store %struct.pfr_buffer* %0, %struct.pfr_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = call i32 @bzero(%struct.pfioc_trans_e* %7, i32 8)
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %7, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlcpy(i32 %12, i8* %13, i32 4)
  %15 = sext i32 %14 to i64
  %16 = icmp uge i64 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %21 = call i32 @pfr_buf_add(%struct.pfr_buffer* %20, %struct.pfioc_trans_e* %7)
  ret i32 %21
}

declare dso_local i32 @bzero(%struct.pfioc_trans_e*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @pfr_buf_add(%struct.pfr_buffer*, %struct.pfioc_trans_e*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
