; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_del_local_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_del_local_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_data = type { %struct.local_rrset* }
%struct.local_rrset = type { %struct.local_rrset*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.local_data*, i64)* @del_local_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_local_rrset(%struct.local_data* %0, i64 %1) #0 {
  %3 = alloca %struct.local_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.local_rrset*, align 8
  %6 = alloca %struct.local_rrset*, align 8
  store %struct.local_data* %0, %struct.local_data** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.local_rrset* null, %struct.local_rrset** %5, align 8
  %7 = load %struct.local_data*, %struct.local_data** %3, align 8
  %8 = getelementptr inbounds %struct.local_data, %struct.local_data* %7, i32 0, i32 0
  %9 = load %struct.local_rrset*, %struct.local_rrset** %8, align 8
  store %struct.local_rrset* %9, %struct.local_rrset** %6, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load %struct.local_rrset*, %struct.local_rrset** %6, align 8
  %12 = icmp ne %struct.local_rrset* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.local_rrset*, %struct.local_rrset** %6, align 8
  %15 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntohs(i32 %19)
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %13, %10
  %24 = phi i1 [ false, %10 ], [ %22, %13 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = load %struct.local_rrset*, %struct.local_rrset** %6, align 8
  store %struct.local_rrset* %26, %struct.local_rrset** %5, align 8
  %27 = load %struct.local_rrset*, %struct.local_rrset** %6, align 8
  %28 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %27, i32 0, i32 0
  %29 = load %struct.local_rrset*, %struct.local_rrset** %28, align 8
  store %struct.local_rrset* %29, %struct.local_rrset** %6, align 8
  br label %10

30:                                               ; preds = %23
  %31 = load %struct.local_rrset*, %struct.local_rrset** %6, align 8
  %32 = icmp ne %struct.local_rrset* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %49

34:                                               ; preds = %30
  %35 = load %struct.local_rrset*, %struct.local_rrset** %5, align 8
  %36 = icmp ne %struct.local_rrset* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.local_rrset*, %struct.local_rrset** %6, align 8
  %39 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %38, i32 0, i32 0
  %40 = load %struct.local_rrset*, %struct.local_rrset** %39, align 8
  %41 = load %struct.local_rrset*, %struct.local_rrset** %5, align 8
  %42 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %41, i32 0, i32 0
  store %struct.local_rrset* %40, %struct.local_rrset** %42, align 8
  br label %49

43:                                               ; preds = %34
  %44 = load %struct.local_rrset*, %struct.local_rrset** %6, align 8
  %45 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %44, i32 0, i32 0
  %46 = load %struct.local_rrset*, %struct.local_rrset** %45, align 8
  %47 = load %struct.local_data*, %struct.local_data** %3, align 8
  %48 = getelementptr inbounds %struct.local_data, %struct.local_data* %47, i32 0, i32 0
  store %struct.local_rrset* %46, %struct.local_rrset** %48, align 8
  br label %49

49:                                               ; preds = %33, %43, %37
  ret void
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
