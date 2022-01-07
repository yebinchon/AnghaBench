; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c__gethtent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c__gethtent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i64, i32, %struct.addrinfo*, i64 }

@_PATH_HOSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AI_V4MAPPED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (i32**, i8*, %struct.addrinfo*)* @_gethtent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @_gethtent(i32** %0, i8* %1, %struct.addrinfo* %2) #0 {
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [8192 x i8], align 16
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %7, align 8
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @_PATH_HOSTS, align 4
  %23 = call i32* @fopen(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = load i32**, i32*** %5, align 8
  store i32* %23, i32** %24, align 8
  %25 = icmp ne i32* %23, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store %struct.addrinfo* null, %struct.addrinfo** %4, align 8
  br label %180

27:                                               ; preds = %21, %3
  br label %28

28:                                               ; preds = %169, %135, %100, %52, %40, %27
  %29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %17, i64 0, i64 0
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i8* @fgets(i8* %29, i32 8192, i32* %31)
  store i8* %32, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store %struct.addrinfo* null, %struct.addrinfo** %4, align 8
  br label %180

35:                                               ; preds = %28
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 35
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %28

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = call i8* @strpbrk(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @strpbrk(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %50, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %28

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  store i8 0, i8* %54, align 1
  %56 = load i8*, i8** %8, align 8
  store i8* %56, i8** %16, align 8
  store i8* null, i8** %11, align 8
  br label %57

57:                                               ; preds = %99, %77, %53
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i1 [ false, %57 ], [ %64, %60 ]
  br i1 %66, label %67, label %100

67:                                               ; preds = %65
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %9, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %67
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  br label %57

80:                                               ; preds = %72
  %81 = load i8*, i8** %9, align 8
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i8*, i8** %9, align 8
  store i8* %85, i8** %11, align 8
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i8*, i8** %9, align 8
  %88 = call i8* @strpbrk(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %88, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %9, align 8
  store i8 0, i8* %91, align 1
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i64 @strcasecmp(i8* %94, i8* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %101

99:                                               ; preds = %93
  br label %57

100:                                              ; preds = %65
  br label %28

101:                                              ; preds = %98
  %102 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 48)
  %103 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  store i64 %105, i64* %106, align 8
  %107 = load i32, i32* @SOCK_DGRAM, align 4
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @AI_NUMERICHOST, align 4
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  %112 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AF_INET6, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %101
  %118 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @AI_V4MAPPED, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @AI_V4MAPPED, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load i32, i32* @AI_V4MAPPED, align 4
  %127 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %125, %117, %101
  %131 = load i8*, i8** %16, align 8
  %132 = call i32 @getaddrinfo(i8* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.addrinfo* %12, %struct.addrinfo** %13)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %28

136:                                              ; preds = %130
  %137 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* %137, %struct.addrinfo** %14, align 8
  br label %138

138:                                              ; preds = %174, %136
  %139 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %140 = icmp ne %struct.addrinfo* %139, null
  br i1 %140, label %141, label %178

141:                                              ; preds = %138
  %142 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %143 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %146 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %148 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %151 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %153 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %156 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  %157 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %158 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @AI_CANONNAME, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %141
  %164 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %165 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = call i64 @get_canonname(%struct.addrinfo* %164, %struct.addrinfo* %165, i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %171 = call i32 @freeaddrinfo(%struct.addrinfo* %170)
  br label %28

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %141
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %176 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %175, i32 0, i32 4
  %177 = load %struct.addrinfo*, %struct.addrinfo** %176, align 8
  store %struct.addrinfo* %177, %struct.addrinfo** %14, align 8
  br label %138

178:                                              ; preds = %138
  %179 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* %179, %struct.addrinfo** %4, align 8
  br label %180

180:                                              ; preds = %178, %34, %26
  %181 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  ret %struct.addrinfo* %181
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i64 @get_canonname(%struct.addrinfo*, %struct.addrinfo*, i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
