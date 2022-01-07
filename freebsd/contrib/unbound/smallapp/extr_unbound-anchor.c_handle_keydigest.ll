; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_handle_keydigest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_handle_keydigest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_data = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"validFrom\00", align 1
@verb = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"error: xml cannot be parsed\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"validUntil\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xml_data*, i32**)* @handle_keydigest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_keydigest(%struct.xml_data* %0, i32** %1) #0 {
  %3 = alloca %struct.xml_data*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xml_data* %0, %struct.xml_data** %3, align 8
  store i32** %1, i32*** %4, align 8
  %7 = load %struct.xml_data*, %struct.xml_data** %3, align 8
  %8 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = call i64 @find_att(i32** %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i32**, i32*** %4, align 8
  %14 = call i64 @find_att(i32** %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 @xml_convertdate(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i64, i64* @verb, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 @exit(i32 0) #3
  unreachable

25:                                               ; preds = %12
  %26 = load %struct.xml_data*, %struct.xml_data** %3, align 8
  %27 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %77

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32**, i32*** %4, align 8
  %35 = call i64 @find_att(i32** %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32**, i32*** %4, align 8
  %39 = call i64 @find_att(i32** %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i64 @xml_convertdate(i64 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i64, i64* @verb, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  %49 = call i32 @exit(i32 0) #3
  unreachable

50:                                               ; preds = %37
  %51 = load %struct.xml_data*, %struct.xml_data** %3, align 8
  %52 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %77

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %33
  %59 = load %struct.xml_data*, %struct.xml_data** %3, align 8
  %60 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.xml_data*, %struct.xml_data** %3, align 8
  %62 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BIO_reset(i32 %63)
  %65 = load %struct.xml_data*, %struct.xml_data** %3, align 8
  %66 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @BIO_reset(i32 %67)
  %69 = load %struct.xml_data*, %struct.xml_data** %3, align 8
  %70 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @BIO_reset(i32 %71)
  %73 = load %struct.xml_data*, %struct.xml_data** %3, align 8
  %74 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @BIO_reset(i32 %75)
  br label %77

77:                                               ; preds = %58, %56, %31
  ret void
}

declare dso_local i64 @find_att(i32**, i8*) #1

declare dso_local i64 @xml_convertdate(i64) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @BIO_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
