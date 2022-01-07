; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_endelem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_endelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_data = type { i32, i64, i32* }

@verb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"xml tag end   '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"KeyDigest\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Zone\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"xml not for the right zone\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @xml_endelem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_endelem(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xml_data*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.xml_data*
  store %struct.xml_data* %7, %struct.xml_data** %5, align 8
  %8 = load i32, i32* @verb, align 4
  %9 = icmp sge i32 %8, 4
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %15 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @free(i32* %16)
  %18 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %19 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %25 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %30 = call i32 @xml_append_ds(%struct.xml_data* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %33 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %53

34:                                               ; preds = %13
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strcasecmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %40 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @xml_is_zone_name(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @verb, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = call i32 @exit(i32 0) #3
  unreachable

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %31
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @xml_append_ds(%struct.xml_data*) #1

declare dso_local i32 @xml_is_zone_name(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
