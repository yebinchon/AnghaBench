; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_print_ip6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_print_ip6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.buf_pr = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.in6_addr }
%struct.TYPE_5__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.hostent = type { i32 }

@O_IP6_SRC_ME = common dso_local global i64 0, align 8
@O_IP6_DST_ME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c" me6\00", align 1
@O_IP6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" ip6\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@O_IP6_SRC = common dso_local global i64 0, align 8
@O_IP6_DST = common dso_local global i64 0, align 8
@co = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Error ntop in print_ip6\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ip6(%struct.buf_pr* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.buf_pr*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca [255 x i8], align 16
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.buf_pr* %0, %struct.buf_pr** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store %struct.hostent* null, %struct.hostent** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.in6_addr* %11, %struct.in6_addr** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = bitcast %struct.TYPE_6__* %12 to i32*
  %14 = call i32 @F_LEN(i32* %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @O_IP6_SRC_ME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @O_IP6_DST_ME, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %2
  %30 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %31 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %142

32:                                               ; preds = %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @O_IP6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %41 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %142

42:                                               ; preds = %32
  %43 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %44 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  %46 = sdiv i32 %45, 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %137, %42
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %142

50:                                               ; preds = %47
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @O_IP6_SRC, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @O_IP6_DST, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %50
  br label %70

65:                                               ; preds = %57
  %66 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %67 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %66, i64 1
  %68 = bitcast %struct.in6_addr* %67 to i32*
  %69 = call i32 @contigmask(i32* %68, i32 128)
  br label %70

70:                                               ; preds = %65, %64
  %71 = phi i32 [ 128, %64 ], [ %69, %65 ]
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @co, i32 0, i32 0), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %79 = bitcast %struct.in6_addr* %78 to i8*
  %80 = load i32, i32* @AF_INET6, align 4
  %81 = call %struct.hostent* @gethostbyaddr(i8* %79, i32 4, i32 %80)
  store %struct.hostent* %81, %struct.hostent** %6, align 8
  br label %82

82:                                               ; preds = %77, %74, %70
  %83 = load %struct.hostent*, %struct.hostent** %6, align 8
  %84 = icmp ne %struct.hostent* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %87 = load %struct.hostent*, %struct.hostent** %6, align 8
  %88 = getelementptr inbounds %struct.hostent, %struct.hostent* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %130

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %96 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %129

97:                                               ; preds = %91
  %98 = load i32, i32* @AF_INET6, align 4
  %99 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %100 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  %101 = call i32* @inet_ntop(i32 %98, %struct.in6_addr* %99, i8* %100, i32 255)
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %105 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %97
  %107 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %108 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  %109 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %114 = load i32, i32* @AF_INET6, align 4
  %115 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %116 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %115, i64 1
  %117 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  %118 = call i32* @inet_ntop(i32 %114, %struct.in6_addr* %116, i8* %117, i32 255)
  %119 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %118)
  br label %128

120:                                              ; preds = %106
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 128
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %123, %120
  br label %128

128:                                              ; preds = %127, %112
  br label %129

129:                                              ; preds = %128, %94
  br label %130

130:                                              ; preds = %129, %85
  %131 = load i32, i32* %8, align 4
  %132 = icmp sgt i32 %131, 2
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %135 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, 2
  store i32 %139, i32* %8, align 4
  %140 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %141 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %140, i64 2
  store %struct.in6_addr* %141, %struct.in6_addr** %7, align 8
  br label %47

142:                                              ; preds = %29, %39, %47
  ret void
}

declare dso_local i32 @F_LEN(i32*) #1

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #1

declare dso_local i32 @contigmask(i32*, i32) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32* @inet_ntop(i32, %struct.in6_addr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
