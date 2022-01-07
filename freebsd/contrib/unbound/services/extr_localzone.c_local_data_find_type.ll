; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_data_find_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_data_find_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_rrset = type { %struct.TYPE_4__*, %struct.local_rrset* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.local_data = type { %struct.local_rrset* }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.local_rrset* (%struct.local_data*, i64, i32)* @local_data_find_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.local_rrset* @local_data_find_type(%struct.local_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.local_rrset*, align 8
  %5 = alloca %struct.local_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.local_rrset*, align 8
  store %struct.local_data* %0, %struct.local_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @htons(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.local_data*, %struct.local_data** %5, align 8
  %12 = getelementptr inbounds %struct.local_data, %struct.local_data* %11, i32 0, i32 0
  %13 = load %struct.local_rrset*, %struct.local_rrset** %12, align 8
  store %struct.local_rrset* %13, %struct.local_rrset** %8, align 8
  br label %14

14:                                               ; preds = %44, %3
  %15 = load %struct.local_rrset*, %struct.local_rrset** %8, align 8
  %16 = icmp ne %struct.local_rrset* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load %struct.local_rrset*, %struct.local_rrset** %8, align 8
  %19 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load %struct.local_rrset*, %struct.local_rrset** %8, align 8
  store %struct.local_rrset* %27, %struct.local_rrset** %4, align 8
  br label %49

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.local_rrset*, %struct.local_rrset** %8, align 8
  %33 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %39 = call i64 @htons(i64 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load %struct.local_rrset*, %struct.local_rrset** %8, align 8
  store %struct.local_rrset* %42, %struct.local_rrset** %4, align 8
  br label %49

43:                                               ; preds = %31, %28
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.local_rrset*, %struct.local_rrset** %8, align 8
  %46 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %45, i32 0, i32 1
  %47 = load %struct.local_rrset*, %struct.local_rrset** %46, align 8
  store %struct.local_rrset* %47, %struct.local_rrset** %8, align 8
  br label %14

48:                                               ; preds = %14
  store %struct.local_rrset* null, %struct.local_rrset** %4, align 8
  br label %49

49:                                               ; preds = %48, %41, %26
  %50 = load %struct.local_rrset*, %struct.local_rrset** %4, align 8
  ret %struct.local_rrset* %50
}

declare dso_local i64 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
