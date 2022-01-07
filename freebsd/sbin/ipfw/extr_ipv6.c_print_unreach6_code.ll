; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_print_unreach6_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_print_unreach6_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }

@icmp6codes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"unreach6 %s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"unreach6 %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_unreach6_code(%struct.buf_pr* %0, i8* %1) #0 {
  %3 = alloca %struct.buf_pr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.buf_pr* %0, %struct.buf_pr** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @icmp6codes, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @match_value(i32 %6, i8* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @bprintf(%struct.buf_pr* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @bprintf(%struct.buf_pr* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %11
  ret void
}

declare dso_local i8* @match_value(i32, i8*) #1

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
