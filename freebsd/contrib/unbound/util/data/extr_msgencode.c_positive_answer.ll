; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_positive_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_positive_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reply_info*, i64)* @positive_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @positive_answer(%struct.reply_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reply_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %8 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @FLAGS_GET_RCODE(i32 %9)
  %11 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

14:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %81, %14
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %18 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %15
  %22 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohs(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %21
  %35 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %76, %34
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %41 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %44 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = icmp ult i64 %39, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %38
  %49 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %50 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ntohs(i32 %57)
  %59 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %74, label %61

61:                                               ; preds = %48
  %62 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %63 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ntohs(i32 %70)
  %72 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %61, %48
  store i32 0, i32* %3, align 4
  br label %85

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %38

79:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %85

80:                                               ; preds = %21
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  br label %15

84:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %79, %74, %13
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
