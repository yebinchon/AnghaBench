; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_get_user_pw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_get_user_pw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Credential/UsernamePassword/Username\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Credential/UsernamePassword/Password\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Username\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Use OSU username '%s'\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Password\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Use OSU password\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_user_pw(%struct.hs20_osu_client* %0, i32* %1, i8* %2, i8** %3, i8** %4) #0 {
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %13 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %14 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @get_child_node(i32 %15, i32* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %22 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = call i8* @xml_node_get_text(i32 %23, i32* %24)
  %26 = load i8**, i8*** %9, align 8
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %20, %5
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %29 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @get_child_node(i32 %30, i32* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %37 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i8* @xml_node_get_base64_text(i32 %38, i32* %39, i32* null)
  %41 = load i8**, i8*** %10, align 8
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %27
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %44 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32* @get_child_node(i32 %45, i32* %46, i8* %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %97

51:                                               ; preds = %42
  %52 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %53 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32* @get_node(i32 %54, i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %51
  %60 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %61 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8**, i8*** %9, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @xml_node_get_text_free(i32 %62, i8* %64)
  %66 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %67 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = call i8* @xml_node_get_text(i32 %68, i32* %69)
  %71 = load i8**, i8*** %9, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* @MSG_INFO, align 4
  %73 = load i8**, i8*** %9, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %59, %51
  %77 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %78 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = call i32* @get_node(i32 %79, i32* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %76
  %85 = load i8**, i8*** %10, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %89 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = call i8* @xml_node_get_base64_text(i32 %90, i32* %91, i32* null)
  %93 = load i8**, i8*** %10, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* @MSG_INFO, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %84, %76
  br label %97

97:                                               ; preds = %96, %42
  ret void
}

declare dso_local i32* @get_child_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i8* @xml_node_get_base64_text(i32, i32*, i32*) #1

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
