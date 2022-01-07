; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_list_restrict6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_list_restrict6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.info_restrict = type { i32, i8*, i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.info_restrict**)* @list_restrict6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_restrict6(%struct.TYPE_9__* %0, %struct.info_restrict** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.info_restrict**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info_restrict*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.info_restrict** %1, %struct.info_restrict*** %4, align 8
  %7 = load %struct.info_restrict**, %struct.info_restrict*** %4, align 8
  %8 = load %struct.info_restrict*, %struct.info_restrict** %7, align 8
  store %struct.info_restrict* %8, %struct.info_restrict** %6, align 8
  store i32* null, i32** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i32 @pushRestriction(i32** %5, %struct.TYPE_9__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %22

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %3, align 8
  br label %9

22:                                               ; preds = %16, %9
  br label %23

23:                                               ; preds = %31, %22
  %24 = load %struct.info_restrict*, %struct.info_restrict** %6, align 8
  %25 = icmp ne %struct.info_restrict* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i64 @popRestriction(i32** %5, %struct.TYPE_9__** %3)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %68

31:                                               ; preds = %29
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.info_restrict*, %struct.info_restrict** %6, align 8
  %38 = getelementptr inbounds %struct.info_restrict, %struct.info_restrict* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.info_restrict*, %struct.info_restrict** %6, align 8
  %45 = getelementptr inbounds %struct.info_restrict, %struct.info_restrict* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.info_restrict*, %struct.info_restrict** %6, align 8
  %47 = getelementptr inbounds %struct.info_restrict, %struct.info_restrict* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @htonl(i32 %50)
  %52 = load %struct.info_restrict*, %struct.info_restrict** %6, align 8
  %53 = getelementptr inbounds %struct.info_restrict, %struct.info_restrict* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @htons(i32 %56)
  %58 = load %struct.info_restrict*, %struct.info_restrict** %6, align 8
  %59 = getelementptr inbounds %struct.info_restrict, %struct.info_restrict* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @htons(i32 %62)
  %64 = load %struct.info_restrict*, %struct.info_restrict** %6, align 8
  %65 = getelementptr inbounds %struct.info_restrict, %struct.info_restrict* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = call i64 (...) @more_pkt()
  %67 = inttoptr i64 %66 to %struct.info_restrict*
  store %struct.info_restrict* %67, %struct.info_restrict** %6, align 8
  br label %23

68:                                               ; preds = %29
  %69 = call i32 @flushRestrictionStack(i32** %5)
  %70 = load %struct.info_restrict*, %struct.info_restrict** %6, align 8
  %71 = load %struct.info_restrict**, %struct.info_restrict*** %4, align 8
  store %struct.info_restrict* %70, %struct.info_restrict** %71, align 8
  ret void
}

declare dso_local i32 @pushRestriction(i32**, %struct.TYPE_9__*) #1

declare dso_local i64 @popRestriction(i32**, %struct.TYPE_9__**) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @more_pkt(...) #1

declare dso_local i32 @flushRestrictionStack(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
