; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_set_pps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_set_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not read or parse '%s'\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SP/\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"wi-fi.org\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Set PPS MO info to wpa_supplicant - SP FQDN %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_set_pps(%struct.hs20_osu_client* %0, i8* %1) #0 {
  %3 = alloca %struct.hs20_osu_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %10 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @node_from_file(i32 %11, i8* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %57

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @os_strstr(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = call i8* @os_strdup(i8* %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %57

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @os_strchr(i8* %33, i8 signext 47)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %6, align 8
  br label %42

41:                                               ; preds = %20
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* @MSG_INFO, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @set_pps(%struct.hs20_osu_client* %46, i32* %47, i8* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @os_free(i8* %50)
  %52 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %53 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @xml_node_free(i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %42, %31, %16
  ret void
}

declare dso_local i32* @node_from_file(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @set_pps(%struct.hs20_osu_client*, i32*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
