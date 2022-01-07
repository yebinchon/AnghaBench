; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_parse_mgroup_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_parse_mgroup_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precreate_mgroup = type { i32 }

@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"PARSE WARN: line %d: unrecognized mgroup flag '%s' - ignored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.precreate_mgroup*, i8*, i32)* @parse_mgroup_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mgroup_flags(i32* %0, %struct.precreate_mgroup* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.precreate_mgroup*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.precreate_mgroup* %1, %struct.precreate_mgroup** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %47, %4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 44)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %13, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %13, align 8
  store i8 0, i8* %20, align 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @parse_name_token(i8* %23, i8** %11, i8** %12)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %6, align 8
  %28 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %27, i32 0, i32 0
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @parse_group_flag(i32 %25, i32* %26, i32* %28, i8* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %22
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @OSM_LOG(i32* %34, i32 %35, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %33, %22
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %14, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_name_token(i8*, i8**, i8**) #1

declare dso_local i32 @parse_group_flag(i32, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
