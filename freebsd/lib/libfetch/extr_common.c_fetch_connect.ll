; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i32, %struct.addrinfo* }

@.str = private unnamed_addr constant [12 x i8] c"---> %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"resolving server address: %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"FETCH_BIND_ADDRESS\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"resolving client address: %s\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to bind to %s\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to connect to %s:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fetch_connect(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %11, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @DEBUGF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, i8*, ...) @fetch_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.addrinfo* @fetch_resolve(i8* %28, i32 %29, i32 %30)
  store %struct.addrinfo* %31, %struct.addrinfo** %11, align 8
  %32 = icmp eq %struct.addrinfo* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %159

34:                                               ; preds = %27
  %35 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i8*, i8** %14, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 (i8*, i8*, ...) @fetch_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i8*, i8** %14, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.addrinfo* @fetch_resolve(i8* %50, i32 0, i32 %51)
  store %struct.addrinfo* %52, %struct.addrinfo** %10, align 8
  %53 = icmp eq %struct.addrinfo* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %159

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %38, %34
  store i32 0, i32* %16, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* %57, %struct.addrinfo** %13, align 8
  br label %58

58:                                               ; preds = %123, %56
  %59 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %60 = icmp ne %struct.addrinfo* %59, null
  br i1 %60, label %61, label %127

61:                                               ; preds = %58
  %62 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @SOCK_STREAM, align 4
  %66 = call i32 @socket(i64 %64, i32 %65, i32 0)
  store i32 %66, i32* %17, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %157

69:                                               ; preds = %61
  store i32 0, i32* %16, align 4
  %70 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %70, %struct.addrinfo** %12, align 8
  br label %71

71:                                               ; preds = %95, %69
  %72 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %73 = icmp ne %struct.addrinfo* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %95

83:                                               ; preds = %74
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bind(i32 %84, i32 %87, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %99

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %82
  %96 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %97 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %96, i32 0, i32 3
  %98 = load %struct.addrinfo*, %struct.addrinfo** %97, align 8
  store %struct.addrinfo* %98, %struct.addrinfo** %12, align 8
  br label %71

99:                                               ; preds = %93, %71
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 (i8*, i8*, ...) @fetch_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %157

109:                                              ; preds = %99
  %110 = load i32, i32* %17, align 4
  %111 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %112 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %115 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @connect(i32 %110, i32 %113, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  br label %127

120:                                              ; preds = %109
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @close(i32 %121)
  store i32 -1, i32* %17, align 4
  br label %123

123:                                              ; preds = %120
  %124 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %125 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %124, i32 0, i32 3
  %126 = load %struct.addrinfo*, %struct.addrinfo** %125, align 8
  store %struct.addrinfo* %126, %struct.addrinfo** %13, align 8
  br label %58

127:                                              ; preds = %119, %58
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (i8*, i8*, ...) @fetch_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %130
  br label %157

138:                                              ; preds = %127
  %139 = load i32, i32* %17, align 4
  %140 = call i32* @fetch_reopen(i32 %139)
  store i32* %140, i32** %15, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %157

143:                                              ; preds = %138
  %144 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %145 = icmp ne %struct.addrinfo* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %148 = call i32 @freeaddrinfo(%struct.addrinfo* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %151 = icmp ne %struct.addrinfo* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %154 = call i32 @freeaddrinfo(%struct.addrinfo* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %15, align 8
  store i32* %156, i32** %5, align 8
  br label %178

157:                                              ; preds = %142, %137, %108, %68
  %158 = call i32 (...) @fetch_syserr()
  br label %159

159:                                              ; preds = %157, %54, %33
  %160 = load i32, i32* %17, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @close(i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %167 = icmp ne %struct.addrinfo* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %170 = call i32 @freeaddrinfo(%struct.addrinfo* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %173 = icmp ne %struct.addrinfo* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %176 = call i32 @freeaddrinfo(%struct.addrinfo* %175)
  br label %177

177:                                              ; preds = %174, %171
  store i32* null, i32** %5, align 8
  br label %178

178:                                              ; preds = %177, %155
  %179 = load i32*, i32** %5, align 8
  ret i32* %179
}

declare dso_local i32 @DEBUGF(i8*, i8*, i32) #1

declare dso_local i32 @fetch_info(i8*, i8*, ...) #1

declare dso_local %struct.addrinfo* @fetch_resolve(i8*, i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @bind(i32, i32, i32) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @fetch_reopen(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @fetch_syserr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
