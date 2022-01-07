; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_startelem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_startelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_data = type { i32, i32, i32* }

@verb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"xml tag start '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"  %s='%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"KeyDigest\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Zone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @xml_startelem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_startelem(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.xml_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.xml_data*
  store %struct.xml_data* %11, %struct.xml_data** %7, align 8
  %12 = load i32, i32* @verb, align 4
  %13 = icmp sge i32 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %19 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @free(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strdup(i8* %22)
  %24 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %25 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %27 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* @verb, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  %36 = call i32 @exit(i32 0) #3
  unreachable

37:                                               ; preds = %17
  %38 = load i32, i32* @verb, align 4
  %39 = icmp sge i32 %38, 4
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load i8**, i8*** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %59)
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %9, align 4
  br label %41

64:                                               ; preds = %41
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strcasecmp(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %71 = load i8**, i8*** %6, align 8
  %72 = call i32 @handle_keydigest(%struct.xml_data* %70, i8** %71)
  br label %100

73:                                               ; preds = %65
  %74 = load i8*, i8** %5, align 8
  %75 = call i64 @strcasecmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %79 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @BIO_reset(i32* %80)
  br label %100

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %85 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %100

89:                                               ; preds = %83
  %90 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %91 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %92 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32* @xml_selectbio(%struct.xml_data* %90, i32 %93)
  store i32* %94, i32** %8, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @BIO_reset(i32* %98)
  br label %100

100:                                              ; preds = %69, %77, %88, %97, %89
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @handle_keydigest(%struct.xml_data*, i8**) #1

declare dso_local i32 @BIO_reset(i32*) #1

declare dso_local i32* @xml_selectbio(%struct.xml_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
