; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_caps_strip_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_caps_strip_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i32, i64, i32, i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BIT_AA = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"caps fallback: removing additional section\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"caps fallback: removing NS rrset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @caps_strip_reply(%struct.reply_info* %0) #0 {
  %2 = alloca %struct.reply_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %2, align 8
  %5 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %6 = icmp ne %struct.reply_info* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %102

8:                                                ; preds = %1
  %9 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %10 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BIT_AA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %102

16:                                               ; preds = %8
  %17 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %18 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* @VERB_ALGO, align 4
  %23 = call i32 @verbose(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %25 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %28 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %34 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %21, %16
  %36 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %37 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %99, %35
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %42 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %45 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = icmp ult i64 %40, %47
  br i1 %48, label %49, label %102

49:                                               ; preds = %39
  %50 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %51 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %50, i32 0, i32 5
  %52 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %52, i64 %53
  %55 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %54, align 8
  store %struct.ub_packed_rrset_key* %55, %struct.ub_packed_rrset_key** %4, align 8
  %56 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %57 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ntohs(i32 %59)
  %61 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %98

63:                                               ; preds = %49
  %64 = load i32, i32* @VERB_ALGO, align 4
  %65 = call i32 @verbose(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i64, i64* %3, align 8
  %67 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %68 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %66, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %63
  %74 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %75 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %74, i32 0, i32 5
  %76 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %75, align 8
  %77 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %78 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %76, i64 %81
  %83 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %82, align 8
  %84 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %85 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %84, i32 0, i32 5
  %86 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %85, align 8
  %87 = load i64, i64* %3, align 8
  %88 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %86, i64 %87
  store %struct.ub_packed_rrset_key* %83, %struct.ub_packed_rrset_key** %88, align 8
  br label %89

89:                                               ; preds = %73, %63
  %90 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %91 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %95 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %95, align 8
  br label %102

98:                                               ; preds = %49
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %3, align 8
  br label %39

102:                                              ; preds = %7, %15, %89, %39
  ret void
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
