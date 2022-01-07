; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211chanlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.ieee80211req_chanlist = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%u-%u\00", align 1
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"channel %u out of range, max %u\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"void channel range, %u > %u\00", align 1
@IEEE80211_IOC_CHANLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @set80211chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set80211chanlist(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.ieee80211req_chanlist, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 1
  %20 = call i8* @malloc(i64 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcpy(i8* %26, i8* %27)
  %29 = call i32 @memset(%struct.ieee80211req_chanlist* %9, i32 0, i32 4)
  %30 = load i8*, i8** %10, align 8
  store i8* %30, i8** %11, align 8
  br label %31

31:                                               ; preds = %114, %25
  %32 = load i8*, i8** %11, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 44)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %12, align 8
  store i8 0, i8* %37, align 1
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %13, i32* %14)
  switch i32 %41, label %94 [
    i32 1, label %42
    i32 2, label %55
  ]

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %49 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds %struct.ieee80211req_chanlist, %struct.ieee80211req_chanlist* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @setbit(i32 %52, i32 %53)
  br label %94

55:                                               ; preds = %39
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %62 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %70 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %90, %79
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ieee80211req_chanlist, %struct.ieee80211req_chanlist* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @setbit(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %81

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %39, %93, %50
  %95 = load i8*, i8** %12, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %116

98:                                               ; preds = %94
  %99 = load i8*, i8** %12, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %106, %98
  %103 = load i32, i32* %16, align 4
  %104 = call i64 @isspace(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %12, align 8
  br label %102

109:                                              ; preds = %102
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @isdigit(i32 %110) #3
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  br label %116

114:                                              ; preds = %109
  %115 = load i8*, i8** %12, align 8
  store i8* %115, i8** %11, align 8
  br label %31

116:                                              ; preds = %113, %97
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @IEEE80211_IOC_CHANLIST, align 4
  %119 = call i32 @set80211(i32 %117, i32 %118, i32 0, i32 4, %struct.ieee80211req_chanlist* %9)
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @free(i8* %120)
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memset(%struct.ieee80211req_chanlist*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @setbit(i32, i32) #1

declare dso_local i64 @isspace(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @set80211(i32, i32, i32, i32, %struct.ieee80211req_chanlist*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
