; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211nwkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211nwkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }

@IEEE80211_KEYBUF_SIZE = common dso_local global i32 0, align 4
@IEEE80211_IOC_WEP = common dso_local global i32 0, align 4
@IEEE80211_WEP_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@IEEE80211_IOC_WEPKEY = common dso_local global i32 0, align 4
@IEEE80211_IOC_WEPTXKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @set80211nwkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set80211nwkey(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %14 = load i32, i32* @IEEE80211_KEYBUF_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @IEEE80211_IOC_WEP, align 4
  %20 = load i32, i32* @IEEE80211_WEP_ON, align 4
  %21 = call i32 @set80211(i32 %18, i32 %19, i32 %20, i32 0, i32* null)
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i64 @isdigit(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 58
  br i1 %33, label %34, label %68

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, 48
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %5, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %64, %34
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = mul nuw i64 4, %15
  %48 = trunc i64 %47 to i32
  %49 = call i32 @bzero(i32* %17, i32 %48)
  %50 = mul nuw i64 4, %15
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i8* @get_string(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %17, i32* %11)
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = call i32 @exit(i32 1) #4
  unreachable

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @IEEE80211_IOC_WEPKEY, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @set80211(i32 %59, i32 %60, i32 %61, i32 %62, i32* %17)
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %43

67:                                               ; preds = %43
  br label %95

68:                                               ; preds = %28, %4
  %69 = mul nuw i64 4, %15
  %70 = trunc i64 %69 to i32
  %71 = call i32 @bzero(i32* %17, i32 %70)
  %72 = mul nuw i64 4, %15
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* @get_string(i8* %74, i8* null, i32* %17, i32* %11)
  store i32 0, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @IEEE80211_IOC_WEPKEY, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @set80211(i32 %76, i32 %77, i32 0, i32 %78, i32* %17)
  %80 = mul nuw i64 4, %15
  %81 = trunc i64 %80 to i32
  %82 = call i32 @bzero(i32* %17, i32 %81)
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %91, %68
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @IEEE80211_IOC_WEPKEY, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @set80211(i32 %87, i32 %88, i32 %89, i32 0, i32* %17)
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %83

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %67
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @IEEE80211_IOC_WEPTXKEY, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @set80211(i32 %96, i32 %97, i32 %98, i32 0, i32* null)
  %100 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set80211(i32, i32, i32, i32, i32*) #2

declare dso_local i64 @isdigit(i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i8* @get_string(i8*, i8*, i32*, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
