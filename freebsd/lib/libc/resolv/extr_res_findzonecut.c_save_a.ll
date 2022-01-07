; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_save_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_save_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i8*, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"save_a: ns_parserr(%s, %d) failed\00", align 1
@ns_o_query = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i64 0, align 8
@RES_IPV6ONLY = common dso_local global i32 0, align 4
@RES_IPV4ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"save_a: malloc failed\00", align 1
@link = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NAMESERVER_PORT = common dso_local global i32 0, align 4
@RR_NS_HAVE_V4 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@RR_NS_HAVE_V6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i8*, i64, i32, %struct.TYPE_12__*)* @save_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_a(i32 %0, i32* %1, i32 %2, i8* %3, i64 %4, i32 %5, %struct.TYPE_12__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %15, align 8
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %159, %7
  %20 = load i32, i32* %16, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ns_msg_count(i32 %22, i32 %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %162

26:                                               ; preds = %19
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call i64 @ns_parserr(i32* %27, i32 %28, i32 %29, i32* %17)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @ns_o_query, align 4
  %35 = call i32 @p_section(i32 %33, i32 %34)
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @DPRINTF(i8* %38)
  store i32 -1, i32* %8, align 4
  br label %163

40:                                               ; preds = %26
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @ns_rr_type(i32 %41)
  %43 = icmp ne i32 %42, 129
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @ns_rr_type(i32 %45)
  %47 = icmp ne i32 %46, 128
  br i1 %47, label %64, label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %17, align 4
  %50 = call i64 @ns_rr_class(i32 %49)
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %64, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @ns_rr_name(i32 %54)
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @ns_samename(i32 %55, i8* %56)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %17, align 4
  %61 = call i64 @ns_rr_rdlen(i32 %60)
  %62 = load i64, i64* @NS_INADDRSZ, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %53, %48, %44
  br label %159

65:                                               ; preds = %59
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @RES_IPV6ONLY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @ns_rr_type(i32 %71)
  %73 = icmp ne i32 %72, 128
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %159

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @RES_IPV4ONLY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @ns_rr_type(i32 %81)
  %83 = icmp ne i32 %82, 129
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %159

85:                                               ; preds = %80, %75
  %86 = call %struct.TYPE_13__* @malloc(i32 48)
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %18, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %88 = icmp eq %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %163

91:                                               ; preds = %85
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %93 = load i32, i32* @link, align 4
  %94 = call i32 @INIT_LINK(%struct.TYPE_13__* %92, i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = call i32 @memset(%struct.TYPE_14__* %96, i32 0, i32 48)
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @ns_rr_type(i32 %98)
  switch i32 %99, label %150 [
    i32 129, label %100
    i32 128, label %126
  ]

100:                                              ; preds = %91
  %101 = load i32, i32* @AF_INET, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  store i32 %101, i32* %105, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @ns_rr_rdata(i32 %110)
  %112 = load i64, i64* @NS_INADDRSZ, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memcpy(i32* %109, i32 %111, i32 %113)
  %115 = load i32, i32* @NAMESERVER_PORT, align 4
  %116 = call i8* @htons(i32 %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  store i8* %116, i8** %120, align 8
  %121 = load i32, i32* @RR_NS_HAVE_V4, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %152

126:                                              ; preds = %91
  %127 = load i32, i32* @AF_INET6, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  store i32 %127, i32* %131, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @ns_rr_rdata(i32 %136)
  %138 = call i32 @memcpy(i32* %135, i32 %137, i32 16)
  %139 = load i32, i32* @NAMESERVER_PORT, align 4
  %140 = call i8* @htons(i32 %139)
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  store i8* %140, i8** %144, align 8
  %145 = load i32, i32* @RR_NS_HAVE_V6, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %152

150:                                              ; preds = %91
  %151 = call i32 (...) @abort() #3
  unreachable

152:                                              ; preds = %126, %100
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %157 = load i32, i32* @link, align 4
  %158 = call i32 @APPEND(i32 %155, %struct.TYPE_13__* %156, i32 %157)
  br label %159

159:                                              ; preds = %152, %84, %74, %64
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %19

162:                                              ; preds = %19
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %162, %89, %32
  %164 = load i32, i32* %8, align 4
  ret i32 %164
}

declare dso_local i32 @ns_msg_count(i32, i32) #1

declare dso_local i64 @ns_parserr(i32*, i32, i32, i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @p_section(i32, i32) #1

declare dso_local i32 @ns_rr_type(i32) #1

declare dso_local i64 @ns_rr_class(i32) #1

declare dso_local i32 @ns_samename(i32, i8*) #1

declare dso_local i32 @ns_rr_name(i32) #1

declare dso_local i64 @ns_rr_rdlen(i32) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @INIT_LINK(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ns_rr_rdata(i32) #1

declare dso_local i8* @htons(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @APPEND(i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
