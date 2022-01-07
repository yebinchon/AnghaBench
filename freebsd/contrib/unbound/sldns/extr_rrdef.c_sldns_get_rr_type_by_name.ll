; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_rrdef.c_sldns_get_rr_type_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_rrdef.c_sldns_get_rr_type_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@LDNS_RDATA_FIELD_DESCRIPTORS_COUNT = common dso_local global i64 0, align 8
@rdata_field_descriptors = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"IXFR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AXFR\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MAILB\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"MAILA\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_get_rr_type_by_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = icmp sgt i32 %8, 4
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strncasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 4
  %17 = call i32 @atoi(i8* %16)
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %10, %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* @LDNS_RDATA_FIELD_DESCRIPTORS_COUNT, align 8
  %22 = trunc i64 %21 to i32
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rdata_field_descriptors, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %24
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i64 @strncasecmp(i8* %41, i8* %42, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %2, align 4
  br label %105

51:                                               ; preds = %40, %34, %24
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** %3, align 8
  %61 = call i64 @strncasecmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 251, i32* %2, align 4
  br label %105

64:                                               ; preds = %59, %55
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @strncasecmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 252, i32* %2, align 4
  br label %105

73:                                               ; preds = %68, %64
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @strncasecmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 253, i32* %2, align 4
  br label %105

82:                                               ; preds = %77, %73
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = icmp eq i32 %84, 5
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 @strncasecmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 254, i32* %2, align 4
  br label %105

91:                                               ; preds = %86, %82
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i8*, i8** %3, align 8
  %97 = call i64 @strncasecmp(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 255, i32* %2, align 4
  br label %105

100:                                              ; preds = %95, %91
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %99, %90, %81, %72, %63, %47, %14
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
