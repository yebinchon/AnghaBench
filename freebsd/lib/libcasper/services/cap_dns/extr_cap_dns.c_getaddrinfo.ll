; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"getaddrinfo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"servname\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"hints.ai_flags\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"hints.ai_family\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"hints.ai_socktype\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"hints.ai_protocol\00", align 1
@EAI_MEMORY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"res%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_getaddrinfo(i32* %0, i8* %1, i8* %2, %struct.addrinfo* %3, %struct.addrinfo** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo**, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca [64 x i8], align 16
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.addrinfo* %3, %struct.addrinfo** %10, align 8
  store %struct.addrinfo** %4, %struct.addrinfo*** %11, align 8
  %21 = call i32* @nvlist_create(i32 0)
  store i32* %21, i32** %18, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = call i32 @nvlist_add_string(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32*, i32** %18, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @nvlist_add_string(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %5
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32*, i32** %18, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @nvlist_add_string(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %39 = icmp ne %struct.addrinfo* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load i32*, i32** %18, align 8
  %42 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @nvlist_add_number(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %18, align 8
  %48 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @nvlist_add_number(i32* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %18, align 8
  %54 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @nvlist_add_number(i32* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %18, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @nvlist_add_number(i32* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %40, %37
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %18, align 8
  %68 = call i32* @cap_xfer_nvlist(i32* %66, i32* %67)
  store i32* %68, i32** %18, align 8
  %69 = load i32*, i32** %18, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %72, i32* %6, align 4
  br label %149

73:                                               ; preds = %65
  %74 = load i32*, i32** %18, align 8
  %75 = call i64 @nvlist_get_number(i32* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32*, i32** %18, align 8
  %79 = call i64 @nvlist_get_number(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %19, align 4
  %81 = load i32*, i32** %18, align 8
  %82 = call i32 @nvlist_destroy(i32* %81)
  %83 = load i32, i32* %19, align 4
  store i32 %83, i32* %6, align 4
  br label %149

84:                                               ; preds = %73
  store i32* null, i32** %16, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %12, align 8
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %127, %84
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @snprintf(i8* %86, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %20, align 4
  %93 = icmp slt i32 %92, 64
  br label %94

94:                                               ; preds = %91, %85
  %95 = phi i1 [ false, %85 ], [ %93, %91 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32*, i32** %18, align 8
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %100 = call i32 @nvlist_exists_nvlist(i32* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  br label %130

103:                                              ; preds = %94
  %104 = load i32*, i32** %18, align 8
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %106 = call i32* @nvlist_get_nvlist(i32* %104, i8* %105)
  store i32* %106, i32** %16, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call %struct.addrinfo* @addrinfo_unpack(i32* %107)
  store %struct.addrinfo* %108, %struct.addrinfo** %14, align 8
  %109 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %110 = icmp eq %struct.addrinfo* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %130

112:                                              ; preds = %103
  %113 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %114 = icmp ne %struct.addrinfo* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %117 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %118 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %117, i32 0, i32 0
  store %struct.addrinfo* %116, %struct.addrinfo** %118, align 8
  br label %125

119:                                              ; preds = %112
  %120 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %121 = icmp eq %struct.addrinfo* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* %123, %struct.addrinfo** %12, align 8
  br label %124

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %124, %115
  %126 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* %126, %struct.addrinfo** %13, align 8
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %85

130:                                              ; preds = %111, %102
  %131 = load i32*, i32** %18, align 8
  %132 = call i32 @nvlist_destroy(i32* %131)
  %133 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %134 = icmp eq %struct.addrinfo* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load i32*, i32** %16, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %140 = icmp eq %struct.addrinfo* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %143 = call i32 @freeaddrinfo(%struct.addrinfo* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %145, i32* %6, align 4
  br label %149

146:                                              ; preds = %135, %130
  %147 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %148 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  store %struct.addrinfo* %147, %struct.addrinfo** %148, align 8
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %146, %144, %77, %71
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i32* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local %struct.addrinfo* @addrinfo_unpack(i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
