; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i8*)* }
%struct.eap_peer_config = type { i8*, i64, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i32, i8*, i64)* @eap_sm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sm_request(%struct.eap_sm* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.eap_peer_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %13 = icmp eq %struct.eap_sm* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %124

15:                                               ; preds = %4
  %16 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %17 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %16)
  store %struct.eap_peer_config* %17, %struct.eap_peer_config** %9, align 8
  %18 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %19 = icmp eq %struct.eap_peer_config* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %124

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %104 [
    i32 135, label %23
    i32 131, label %28
    i32 134, label %33
    i32 130, label %38
    i32 133, label %43
    i32 132, label %92
    i32 128, label %97
    i32 129, label %103
  ]

23:                                               ; preds = %21
  %24 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %25 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %105

28:                                               ; preds = %21
  %29 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %30 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %105

33:                                               ; preds = %21
  %34 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %35 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %105

38:                                               ; preds = %21
  %39 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %40 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %105

43:                                               ; preds = %21
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %81

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 3
  %49 = call i8* @os_malloc(i64 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %124

53:                                               ; preds = %46
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 91, i8* %55, align 1
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @os_memcpy(i8* %57, i8* %58, i64 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 93, i8* %64, align 1
  %65 = load i8*, i8** %11, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 2
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %11, align 8
  store i8* %69, i8** %10, align 8
  %70 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %71 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @os_free(i8* %72)
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %76 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 3
  %79 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %80 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %91

81:                                               ; preds = %43
  %82 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %83 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %124

87:                                               ; preds = %81
  %88 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %89 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %10, align 8
  br label %91

91:                                               ; preds = %87, %53
  br label %105

92:                                               ; preds = %21
  %93 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %94 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %105

97:                                               ; preds = %21
  %98 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %99 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i8*, i8** %7, align 8
  store i8* %102, i8** %10, align 8
  br label %105

103:                                              ; preds = %21
  br label %105

104:                                              ; preds = %21
  br label %124

105:                                              ; preds = %103, %97, %92, %91, %38, %33, %28, %23
  %106 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %107 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %109, align 8
  %111 = icmp ne i32 (i32, i32, i8*)* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %114 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %116, align 8
  %118 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %119 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 %117(i32 %120, i32 %121, i8* %122)
  br label %124

124:                                              ; preds = %14, %20, %52, %86, %104, %112, %105
  ret void
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
