; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_auth_gen_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_auth_gen_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@WPA_PROTO_OSEN = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_gen_wpa_ie(%struct.wpa_authenticator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [128 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  %7 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  store i32* %7, i32** %4, align 8
  %8 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WPA_PROTO_OSEN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %15, i32 0, i32 2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @wpa_write_osen(%struct.TYPE_5__* %16, i32* %17)
  store i32* %18, i32** %4, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WPA_PROTO_RSN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %19
  %28 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %28, i32 0, i32 2
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %32 = getelementptr inbounds i32, i32* %31, i64 512
  %33 = load i32*, i32** %4, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @wpa_write_rsn_ie(%struct.TYPE_5__* %29, i32* %30, i32 %38, i32* null)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %122

44:                                               ; preds = %27
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %4, align 8
  br label %49

49:                                               ; preds = %44, %19
  %50 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %51 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WPA_PROTO_WPA, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %49
  %58 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %59 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %58, i32 0, i32 2
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %62 = getelementptr inbounds i32, i32* %61, i64 512
  %63 = load i32*, i32** %4, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @wpa_write_wpa_ie(%struct.TYPE_5__* %59, i32* %60, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %122

74:                                               ; preds = %57
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %4, align 8
  br label %79

79:                                               ; preds = %74, %49
  %80 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %81 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @os_free(i32* %82)
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i8* @os_malloc(i32 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %94 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %96 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %79
  store i32 -1, i32* %2, align 4
  br label %122

100:                                              ; preds = %79
  %101 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %102 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %107 = ptrtoint i32* %105 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 @os_memcpy(i32* %103, i32* %104, i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %121 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %100, %99, %72, %42
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32* @wpa_write_osen(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @wpa_write_rsn_ie(%struct.TYPE_5__*, i32*, i32, i32*) #1

declare dso_local i32 @wpa_write_wpa_ie(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
