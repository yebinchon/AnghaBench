; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_referral_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_referral_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i32, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i32 }

@sec_status_secure = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"validated part of referral response as %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reply_info*)* @validate_referral_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_referral_response(%struct.reply_info* %0) #0 {
  %2 = alloca %struct.reply_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.reply_info* %0, %struct.reply_info** %2, align 8
  %5 = load i32, i32* @sec_status_secure, align 4
  %6 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %7 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %11 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %16 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.packed_rrset_data*
  %25 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %29 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %35 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %14
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %8

40:                                               ; preds = %8
  %41 = load i32, i32* @VERB_ALGO, align 4
  %42 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %43 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sec_status_to_string(i32 %44)
  %46 = call i32 @verbose(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45)
  ret void
}

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @sec_status_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
