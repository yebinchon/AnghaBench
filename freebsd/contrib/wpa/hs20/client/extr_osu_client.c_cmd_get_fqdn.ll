; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_get_fqdn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_get_fqdn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not read or parse '%s'\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"HomeSP/FQDN\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pps-fqdn\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*)* @cmd_get_fqdn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_get_fqdn(%struct.hs20_osu_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %11 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @node_from_file(i32 %12, i8* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 -1, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %23 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @get_child_node(i32 %24, i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %31 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i8* @xml_node_get_text(i32 %32, i32* %33)
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %37 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @xml_node_free(i32 %38, i32* %39)
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %35
  %44 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32*, i32** %9, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @fprintf(i32* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @fclose(i32* %51)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %55 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @xml_node_get_text_free(i32 %56, i8* %57)
  store i32 0, i32* %3, align 4
  br label %65

59:                                               ; preds = %35
  %60 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %61 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @xml_node_get_text_free(i32 %62, i8* %63)
  store i32 -1, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %53, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @node_from_file(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32* @get_child_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
