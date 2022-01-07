; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rr_list2str_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rr_list2str_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@ldns_output_format_default = common dso_local global %struct.TYPE_5__* null, align 8
@LDNS_COMMENT_NULLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"; (null)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ldns_rr_list2str_fmt(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %9 = call i32* @ldns_buffer_new(i32 %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %47

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @ldns_rr_list2buffer_str_fmt(i32* %17, %struct.TYPE_5__* %18, i32* %19)
  %21 = load i64, i64* @LDNS_STATUS_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %16
  br label %41

25:                                               ; preds = %13
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = icmp eq %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ldns_output_format_default, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %4, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LDNS_COMMENT_NULLS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @ldns_buffer_printf(i32* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32*, i32** %7, align 8
  %43 = call i8* @ldns_buffer_export2str(i32* %42)
  store i8* %43, i8** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @ldns_buffer_free(i32* %44)
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %41, %12
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i64 @ldns_rr_list2buffer_str_fmt(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*) #1

declare dso_local i8* @ldns_buffer_export2str(i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
