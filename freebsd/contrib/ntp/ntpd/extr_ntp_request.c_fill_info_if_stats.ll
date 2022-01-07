; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_fill_info_if_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_fill_info_if_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.info_if_stats = type { i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }

@client_v6_capable = common dso_local global i32 0, align 4
@current_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_10__*)* @fill_info_if_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_info_if_stats(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.info_if_stats**, align 8
  %6 = alloca %struct.info_if_stats*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.info_if_stats**
  store %struct.info_if_stats** %9, %struct.info_if_stats*** %5, align 8
  %10 = load %struct.info_if_stats**, %struct.info_if_stats*** %5, align 8
  %11 = load %struct.info_if_stats*, %struct.info_if_stats** %10, align 8
  store %struct.info_if_stats* %11, %struct.info_if_stats** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %7, align 8
  %15 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %16 = icmp eq %struct.info_if_stats* null, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %172

18:                                               ; preds = %2
  %19 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %20 = call i32 @ZERO(%struct.info_if_stats* byval(%struct.info_if_stats) align 8 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 15
  %23 = call i64 @IS_IPV6(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %18
  %26 = load i32, i32* @client_v6_capable, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %172

29:                                               ; preds = %25
  %30 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %31 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 15
  %34 = call i8* @SOCK_ADDR6(i32* %33)
  %35 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %36 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %35, i32 0, i32 18
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 14
  %40 = call i8* @SOCK_ADDR6(i32* %39)
  %41 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %42 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %41, i32 0, i32 17
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 13
  %46 = call i8* @SOCK_ADDR6(i32* %45)
  %47 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %48 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %47, i32 0, i32 16
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  br label %71

50:                                               ; preds = %18
  %51 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %52 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 15
  %55 = call i8* @SOCK_ADDR4(i32* %54)
  %56 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %57 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %56, i32 0, i32 18
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 14
  %61 = call i8* @SOCK_ADDR4(i32* %60)
  %62 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %63 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %62, i32 0, i32 17
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 13
  %67 = call i8* @SOCK_ADDR4(i32* %66)
  %68 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %69 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %68, i32 0, i32 16
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  br label %71

71:                                               ; preds = %50, %29
  %72 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %73 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @htonl(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %78 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %80 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %79, i32 0, i32 15
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @strlcpy(i32 %81, i32 %84, i32 4)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @htons(i32 %88)
  %90 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %91 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %90, i32 0, i32 14
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @htonl(i32 %94)
  %96 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %97 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %96, i32 0, i32 13
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @htonl(i32 %100)
  %102 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %103 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %102, i32 0, i32 12
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @htonl(i32 %106)
  %108 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %109 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %108, i32 0, i32 11
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @htonl(i32 %112)
  %114 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %115 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %114, i32 0, i32 10
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @htonl(i32 %118)
  %120 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %121 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %120, i32 0, i32 9
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @htonl(i32 %124)
  %126 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %127 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %126, i32 0, i32 8
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @htonl(i32 %130)
  %132 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %133 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %132, i32 0, i32 6
  store i8* %131, i8** %133, align 8
  %134 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %135 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %134, i32 0, i32 6
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %138 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %137, i32 0, i32 7
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @htonl(i32 %141)
  %143 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %144 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  %145 = load i32, i32* @current_time, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  %150 = call i8* @htonl(i32 %149)
  %151 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %152 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %157 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @htonl(i32 %160)
  %162 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %163 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.info_if_stats*, %struct.info_if_stats** %6, align 8
  %168 = getelementptr inbounds %struct.info_if_stats, %struct.info_if_stats* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = call i64 (...) @more_pkt()
  %170 = inttoptr i64 %169 to %struct.info_if_stats*
  %171 = load %struct.info_if_stats**, %struct.info_if_stats*** %5, align 8
  store %struct.info_if_stats* %170, %struct.info_if_stats** %171, align 8
  br label %172

172:                                              ; preds = %71, %28, %17
  ret void
}

declare dso_local i32 @ZERO(%struct.info_if_stats* byval(%struct.info_if_stats) align 8) #1

declare dso_local i64 @IS_IPV6(i32*) #1

declare dso_local i8* @SOCK_ADDR6(i32*) #1

declare dso_local i8* @SOCK_ADDR4(i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @more_pkt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
