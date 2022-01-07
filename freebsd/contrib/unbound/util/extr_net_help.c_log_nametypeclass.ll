; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_nametypeclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_nametypeclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_TSIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"TSIG\00", align 1
@LDNS_RR_TYPE_IXFR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"IXFR\00", align 1
@LDNS_RR_TYPE_AXFR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"AXFR\00", align 1
@LDNS_RR_TYPE_MAILB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"MAILB\00", align 1
@LDNS_RR_TYPE_MAILA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"MAILA\00", align 1
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"TYPE%d\00", align 1
@sldns_rr_classes = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"CLASS%d\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_nametypeclass(i32 %0, i8* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [12 x i8], align 1
  %14 = alloca [12 x i8], align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @verbosity, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 1, i32* %17, align 4
  br label %118

27:                                               ; preds = %5
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @dname_str(i32* %28, i8* %22)
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @LDNS_RR_TYPE_TSIG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %86

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %85

39:                                               ; preds = %34
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @LDNS_RR_TYPE_AXFR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %84

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @LDNS_RR_TYPE_MAILB, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %83

49:                                               ; preds = %44
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @LDNS_RR_TYPE_MAILA, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %82

54:                                               ; preds = %49
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %81

59:                                               ; preds = %54
  %60 = load i64, i64* %9, align 8
  %61 = call %struct.TYPE_3__* @sldns_rr_descript(i64 %60)
  %62 = icmp ne %struct.TYPE_3__* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  %65 = call %struct.TYPE_3__* @sldns_rr_descript(i64 %64)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i64, i64* %9, align 8
  %71 = call %struct.TYPE_3__* @sldns_rr_descript(i64 %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %15, align 8
  br label %80

74:                                               ; preds = %63, %59
  %75 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @snprintf(i8* %75, i32 12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  store i8* %79, i8** %15, align 8
  br label %80

80:                                               ; preds = %74, %69
  br label %81

81:                                               ; preds = %80, %58
  br label %82

82:                                               ; preds = %81, %53
  br label %83

83:                                               ; preds = %82, %48
  br label %84

84:                                               ; preds = %83, %43
  br label %85

85:                                               ; preds = %84, %38
  br label %86

86:                                               ; preds = %85, %33
  %87 = load i32, i32* @sldns_rr_classes, align 4
  %88 = load i64, i64* %10, align 8
  %89 = trunc i64 %88 to i32
  %90 = call %struct.TYPE_4__* @sldns_lookup_by_id(i32 %87, i32 %89)
  %91 = icmp ne %struct.TYPE_4__* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load i32, i32* @sldns_rr_classes, align 4
  %94 = load i64, i64* %10, align 8
  %95 = trunc i64 %94 to i32
  %96 = call %struct.TYPE_4__* @sldns_lookup_by_id(i32 %93, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load i32, i32* @sldns_rr_classes, align 4
  %102 = load i64, i64* %10, align 8
  %103 = trunc i64 %102 to i32
  %104 = call %struct.TYPE_4__* @sldns_lookup_by_id(i32 %101, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %16, align 8
  br label %113

107:                                              ; preds = %92, %86
  %108 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  %109 = load i64, i64* %10, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @snprintf(i8* %108, i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  store i8* %112, i8** %16, align 8
  br label %113

113:                                              ; preds = %107, %100
  %114 = load i8*, i8** %7, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = load i8*, i8** %16, align 8
  %117 = call i32 @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %114, i8* %22, i8* %115, i8* %116)
  store i32 0, i32* %17, align 4
  br label %118

118:                                              ; preds = %113, %26
  %119 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %17, align 4
  switch i32 %120, label %122 [
    i32 0, label %121
    i32 1, label %121
  ]

121:                                              ; preds = %118, %118
  ret void

122:                                              ; preds = %118
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dname_str(i32*, i8*) #2

declare dso_local %struct.TYPE_3__* @sldns_rr_descript(i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.TYPE_4__* @sldns_lookup_by_id(i32, i32) #2

declare dso_local i32 @log_info(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
