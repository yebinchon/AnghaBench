; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_service_find_asp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_service_find_asp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.p2ps_advertisement*, i32 }
%struct.p2ps_advertisement = type { %struct.p2ps_advertisement*, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ASP find - ASP list: %p\00", align 1
@P2PS_HASH_LEN = common dso_local global i32 0, align 4
@P2PS_WILD_HASH_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_data*, i32*)* @p2p_service_find_asp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_service_find_asp(%struct.p2p_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.p2ps_advertisement*, align 8
  %7 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %9 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %10 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %9, i32 0, i32 0
  %11 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %10, align 8
  %12 = call i32 @p2p_dbg(%struct.p2p_data* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.p2ps_advertisement* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @P2PS_HASH_LEN, align 4
  %18 = call i64 @os_memcmp(i32* %13, i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 0
  %23 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %22, align 8
  store %struct.p2ps_advertisement* %23, %struct.p2ps_advertisement** %6, align 8
  br label %24

24:                                               ; preds = %49, %2
  %25 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %6, align 8
  %26 = icmp ne %struct.p2ps_advertisement* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %6, align 8
  %30 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @P2PS_HASH_LEN, align 4
  %33 = call i64 @os_memcmp(i32* %28, i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %54

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %6, align 8
  %41 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @P2PS_WILD_HASH_STR, align 4
  %44 = load i32, i32* @P2PS_WILD_HASH_STR, align 4
  %45 = call i32 @os_strlen(i32 %44)
  %46 = call i64 @os_strncmp(i32 %42, i32 %43, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %54

49:                                               ; preds = %39, %36
  %50 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %6, align 8
  %51 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %50, i32 0, i32 0
  %52 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %51, align 8
  store %struct.p2ps_advertisement* %52, %struct.p2ps_advertisement** %6, align 8
  br label %24

53:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48, %35
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, %struct.p2ps_advertisement*) #1

declare dso_local i64 @os_memcmp(i32*, i32, i32) #1

declare dso_local i64 @os_strncmp(i32, i32, i32) #1

declare dso_local i32 @os_strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
