; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_newports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_newports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }
%struct.TYPE_3__ = type { i64* }

@_port_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_pr*, %struct.TYPE_3__*, i32, i32)* @print_newports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_newports(%struct.buf_pr* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.buf_pr*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.buf_pr* %0, %struct.buf_pr** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i32, i32* @_port_name, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @match_value(i32 %18, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.buf_pr*, %struct.buf_pr** %5, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = bitcast %struct.TYPE_3__* %29 to i32*
  %31 = call i32 @F_LEN(i32* %30)
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %63, %28
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load %struct.buf_pr*, %struct.buf_pr** %5, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = load %struct.buf_pr*, %struct.buf_pr** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @print_port(%struct.buf_pr* %40, i32 %41, i64 %44)
  %46 = load i64*, i64** %9, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %36
  %54 = load %struct.buf_pr*, %struct.buf_pr** %5, align 8
  %55 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.buf_pr*, %struct.buf_pr** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i64*, i64** %9, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @print_port(%struct.buf_pr* %56, i32 %57, i64 %60)
  br label %62

62:                                               ; preds = %53, %36
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  %66 = load i64*, i64** %9, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  store i64* %67, i64** %9, align 8
  br label %33

68:                                               ; preds = %33
  ret void
}

declare dso_local i8* @match_value(i32, i32) #1

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #1

declare dso_local i32 @F_LEN(i32*) #1

declare dso_local i32 @print_port(%struct.buf_pr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
