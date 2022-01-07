; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i32 }
%struct.local_zones = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"bad zone name %s %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bad lz_enter_zone type %s %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"could not enter zone %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.local_zone* (%struct.local_zones*, i8*, i8*, i32)* @lz_enter_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.local_zone* @lz_enter_zone(%struct.local_zones* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.local_zone*, align 8
  %6 = alloca %struct.local_zones*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.local_zone*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.local_zones* %0, %struct.local_zones** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @parse_dname(i8* %15, i32** %12, i64* %13, i32* %14)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  store %struct.local_zone* null, %struct.local_zone** %5, align 8
  br label %47

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @local_zone_str2type(i8* %23, i32* %11)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @free(i32* %30)
  store %struct.local_zone* null, %struct.local_zone** %5, align 8
  br label %47

32:                                               ; preds = %22
  %33 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.local_zone* @lz_enter_zone_dname(%struct.local_zones* %33, i32* %34, i64 %35, i32 %36, i32 %37, i32 %38)
  store %struct.local_zone* %39, %struct.local_zone** %10, align 8
  %40 = icmp ne %struct.local_zone* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* %43)
  store %struct.local_zone* null, %struct.local_zone** %5, align 8
  br label %47

45:                                               ; preds = %32
  %46 = load %struct.local_zone*, %struct.local_zone** %10, align 8
  store %struct.local_zone* %46, %struct.local_zone** %5, align 8
  br label %47

47:                                               ; preds = %45, %41, %26, %18
  %48 = load %struct.local_zone*, %struct.local_zone** %5, align 8
  ret %struct.local_zone* %48
}

declare dso_local i32 @parse_dname(i8*, i32**, i64*, i32*) #1

declare dso_local i32 @log_err(i8*, i8*, i8*) #1

declare dso_local i32 @local_zone_str2type(i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.local_zone* @lz_enter_zone_dname(%struct.local_zones*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
