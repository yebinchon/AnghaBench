; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_restrict.c_restrictions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_restrict.c_restrictions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.in6_addr = type { i32 }

@res_calls = common dso_local global i32 0, align 4
@RES_IGNORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"restrictions: looking up %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"restrictions: srcadr %s is multicast\0A\00", align 1
@restrict_def4 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@res_not_found = common dso_local global i32 0, align 4
@res_found = common dso_local global i32 0, align 4
@restrict_def6 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restrictions(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = icmp ne %struct.TYPE_9__* null, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = load i32, i32* @res_calls, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @res_calls, align 4
  %13 = load i32, i32* @RES_IGNORE, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @stoa(i32* %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @DPRINTF(i32 1, i8* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @IS_IPV4(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @SRCADR(i32* %27)
  %29 = call i64 @IN_CLASSD(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @stoa(i32* %32)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @DPRINTF(i32 1, i8* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 2, i32* %38, align 4
  br label %116

39:                                               ; preds = %26
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @SRCADR(i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @SRCPORT(i32* %42)
  %44 = call %struct.TYPE_8__* @match_restrict4_addr(i32 %41, i32 %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %5, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @INSIST(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = icmp eq %struct.TYPE_8__* @restrict_def4, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load i32, i32* @res_not_found, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @res_not_found, align 4
  br label %61

58:                                               ; preds = %39
  %59 = load i32, i32* @res_found, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @res_found, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %2
  %73 = load i32*, i32** %3, align 8
  %74 = call i64 @IS_IPV6(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %72
  %77 = load i32*, i32** %3, align 8
  %78 = call %struct.in6_addr* @PSOCK_ADDR6(i32* %77)
  store %struct.in6_addr* %78, %struct.in6_addr** %6, align 8
  %79 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %80 = call i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %116

83:                                               ; preds = %76
  %84 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @SRCPORT(i32* %85)
  %87 = call %struct.TYPE_8__* @match_restrict6_addr(%struct.in6_addr* %84, i32 %86)
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %5, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = icmp ne %struct.TYPE_8__* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 @INSIST(i32 %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = icmp eq %struct.TYPE_8__* @restrict_def6, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i32, i32* @res_not_found, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @res_not_found, align 4
  br label %104

101:                                              ; preds = %83
  %102 = load i32, i32* @res_found, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @res_found, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %104, %72
  br label %116

116:                                              ; preds = %115, %82, %31
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i64 @IS_IPV4(i32*) #1

declare dso_local i64 @IN_CLASSD(i32) #1

declare dso_local i32 @SRCADR(i32*) #1

declare dso_local %struct.TYPE_8__* @match_restrict4_addr(i32, i32) #1

declare dso_local i32 @SRCPORT(i32*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i64 @IS_IPV6(i32*) #1

declare dso_local %struct.in6_addr* @PSOCK_ADDR6(i32*) #1

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr*) #1

declare dso_local %struct.TYPE_8__* @match_restrict6_addr(%struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
