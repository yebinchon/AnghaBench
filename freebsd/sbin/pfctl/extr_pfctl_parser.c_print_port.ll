; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_print_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_print_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" port\00", align 1
@PF_OP_EQ = common dso_local global i64 0, align 8
@PF_OP_NE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_port(i64 %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca %struct.servent*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call %struct.servent* @getservbyport(i32 %17, i8* %18)
  store %struct.servent* %19, %struct.servent** %13, align 8
  br label %21

20:                                               ; preds = %5
  store %struct.servent* null, %struct.servent** %13, align 8
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ntohs(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @snprintf(i8* %26, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @snprintf(i8* %29, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.servent*, %struct.servent** %13, align 8
  %34 = icmp ne %struct.servent* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %21
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @PF_OP_EQ, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @PF_OP_NE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39, %35
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.servent*, %struct.servent** %13, align 8
  %46 = getelementptr inbounds %struct.servent, %struct.servent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %49 = call i32 @print_op(i64 %44, i8* %47, i8* %48)
  br label %55

50:                                               ; preds = %39, %21
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %54 = call i32 @print_op(i64 %51, i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %50, %43
  ret void
}

declare dso_local %struct.servent* @getservbyport(i32, i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_op(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
