; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_query_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_log_query_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
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
@LOG_TAG_QUERYREPLY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_query_in(i8* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [12 x i8], align 1
  %12 = alloca [12 x i8], align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @dname_str(i32* %20, i8* %19)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @LDNS_RR_TYPE_TSIG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %78

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %77

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @LDNS_RR_TYPE_AXFR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %76

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @LDNS_RR_TYPE_MAILB, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %75

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @LDNS_RR_TYPE_MAILA, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %74

46:                                               ; preds = %41
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %73

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = call %struct.TYPE_3__* @sldns_rr_descript(i64 %52)
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = call %struct.TYPE_3__* @sldns_rr_descript(i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  %63 = call %struct.TYPE_3__* @sldns_rr_descript(i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %13, align 8
  br label %72

66:                                               ; preds = %55, %51
  %67 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %68 = load i64, i64* %7, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @snprintf(i8* %67, i32 12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  store i8* %71, i8** %13, align 8
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %73, %45
  br label %75

75:                                               ; preds = %74, %40
  br label %76

76:                                               ; preds = %75, %35
  br label %77

77:                                               ; preds = %76, %30
  br label %78

78:                                               ; preds = %77, %25
  %79 = load i32, i32* @sldns_rr_classes, align 4
  %80 = load i64, i64* %8, align 8
  %81 = trunc i64 %80 to i32
  %82 = call %struct.TYPE_4__* @sldns_lookup_by_id(i32 %79, i32 %81)
  %83 = icmp ne %struct.TYPE_4__* %82, null
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load i32, i32* @sldns_rr_classes, align 4
  %86 = load i64, i64* %8, align 8
  %87 = trunc i64 %86 to i32
  %88 = call %struct.TYPE_4__* @sldns_lookup_by_id(i32 %85, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i32, i32* @sldns_rr_classes, align 4
  %94 = load i64, i64* %8, align 8
  %95 = trunc i64 %94 to i32
  %96 = call %struct.TYPE_4__* @sldns_lookup_by_id(i32 %93, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %14, align 8
  br label %105

99:                                               ; preds = %84, %78
  %100 = getelementptr inbounds [12 x i8], [12 x i8]* %12, i64 0, i64 0
  %101 = load i64, i64* %8, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @snprintf(i8* %100, i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = getelementptr inbounds [12 x i8], [12 x i8]* %12, i64 0, i64 0
  store i8* %104, i8** %14, align 8
  br label %105

105:                                              ; preds = %99, %92
  %106 = load i64, i64* @LOG_TAG_QUERYREPLY, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 @log_query(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %109, i8* %19, i8* %110, i8* %111)
  br label %118

113:                                              ; preds = %105
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %114, i8* %19, i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %119)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dname_str(i32*, i8*) #2

declare dso_local %struct.TYPE_3__* @sldns_rr_descript(i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.TYPE_4__* @sldns_lookup_by_id(i32, i32) #2

declare dso_local i32 @log_query(i8*, i8*, i8*, i8*, i8*) #2

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
