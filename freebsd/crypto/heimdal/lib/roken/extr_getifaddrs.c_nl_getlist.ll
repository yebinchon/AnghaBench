; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_nl_getlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_nl_getlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsg_list = type { i32, i32, %struct.nlmsg_list*, %struct.nlmsghdr* }
%struct.nlmsghdr = type { i32 }
%struct.pollfd = type { i32, i32, i64 }

@NLM_F_ROOT = common dso_local global i32 0, align 4
@NLM_F_MATCH = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.nlmsg_list**, %struct.nlmsg_list**)* @nl_getlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl_getlist(i32 %0, i32 %1, i32 %2, %struct.nlmsg_list** %3, %struct.nlmsg_list** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlmsg_list**, align 8
  %11 = alloca %struct.nlmsg_list**, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pollfd, align 8
  %17 = alloca %struct.nlmsg_list*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nlmsg_list** %3, %struct.nlmsg_list*** %10, align 8
  store %struct.nlmsg_list** %4, %struct.nlmsg_list*** %11, align 8
  store %struct.nlmsghdr* null, %struct.nlmsghdr** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 3, i32* %15, align 4
  br label %19

19:                                               ; preds = %63, %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @NLM_F_ROOT, align 4
  %23 = load i32, i32* @NLM_F_MATCH, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @nl_sendreq(i32 %20, i32 %21, i32 %24, i32* %8)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %128

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i64 @time(i32* null)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %118, %36
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %119

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @POLLIN, align 4
  %45 = load i32, i32* @POLLPRI, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = call i32 @poll(%struct.pollfd* %16, i32 1, i32 1000)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %128

54:                                               ; preds = %41
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %15, align 4
  %62 = icmp sgt i32 %60, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %19

64:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %128

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @nl_getmsg(i32 %67, i32 %68, i32 %69, %struct.nlmsghdr** %12, i32* %14)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %6, align 4
  br label %128

75:                                               ; preds = %66
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %77 = icmp ne %struct.nlmsghdr* %76, null
  br i1 %77, label %78, label %118

78:                                               ; preds = %75
  %79 = call i64 @malloc(i32 24)
  %80 = inttoptr i64 %79 to %struct.nlmsg_list*
  store %struct.nlmsg_list* %80, %struct.nlmsg_list** %17, align 8
  %81 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %82 = icmp eq %struct.nlmsg_list* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @errno, align 4
  store i32 %84, i32* %18, align 4
  %85 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %86 = call i32 @free(%struct.nlmsghdr* %85)
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @__set_errno(i32 %87)
  store i32 -1, i32* %13, align 4
  br label %117

89:                                               ; preds = %78
  %90 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %91 = getelementptr inbounds %struct.nlmsg_list, %struct.nlmsg_list* %90, i32 0, i32 2
  store %struct.nlmsg_list* null, %struct.nlmsg_list** %91, align 8
  %92 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %93 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %94 = getelementptr inbounds %struct.nlmsg_list, %struct.nlmsg_list* %93, i32 0, i32 3
  store %struct.nlmsghdr* %92, %struct.nlmsghdr** %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %97 = getelementptr inbounds %struct.nlmsg_list, %struct.nlmsg_list* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %100 = getelementptr inbounds %struct.nlmsg_list, %struct.nlmsg_list* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.nlmsg_list**, %struct.nlmsg_list*** %10, align 8
  %102 = load %struct.nlmsg_list*, %struct.nlmsg_list** %101, align 8
  %103 = icmp eq %struct.nlmsg_list* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %89
  %105 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %106 = load %struct.nlmsg_list**, %struct.nlmsg_list*** %10, align 8
  store %struct.nlmsg_list* %105, %struct.nlmsg_list** %106, align 8
  %107 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %108 = load %struct.nlmsg_list**, %struct.nlmsg_list*** %11, align 8
  store %struct.nlmsg_list* %107, %struct.nlmsg_list** %108, align 8
  br label %116

109:                                              ; preds = %89
  %110 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %111 = load %struct.nlmsg_list**, %struct.nlmsg_list*** %11, align 8
  %112 = load %struct.nlmsg_list*, %struct.nlmsg_list** %111, align 8
  %113 = getelementptr inbounds %struct.nlmsg_list, %struct.nlmsg_list* %112, i32 0, i32 2
  store %struct.nlmsg_list* %110, %struct.nlmsg_list** %113, align 8
  %114 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %115 = load %struct.nlmsg_list**, %struct.nlmsg_list*** %11, align 8
  store %struct.nlmsg_list* %114, %struct.nlmsg_list** %115, align 8
  br label %116

116:                                              ; preds = %109, %104
  br label %117

117:                                              ; preds = %116, %83
  br label %118

118:                                              ; preds = %117, %75
  br label %37

119:                                              ; preds = %37
  %120 = load i32, i32* %13, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  br label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %13, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %73, %64, %52, %28
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @nl_sendreq(i32, i32, i32, i32*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @nl_getmsg(i32, i32, i32, %struct.nlmsghdr**, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.nlmsghdr*) #1

declare dso_local i32 @__set_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
