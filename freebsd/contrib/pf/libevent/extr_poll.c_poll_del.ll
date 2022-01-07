; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_poll.c_poll_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_poll.c_poll_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i64 }
%struct.pollop = type { i32*, i32, %struct.pollfd*, i32**, i32** }
%struct.pollfd = type { i32, i64 }

@EV_SIGNAL = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll_del(i8* %0, %struct.event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event*, align 8
  %6 = alloca %struct.pollop*, align 8
  %7 = alloca %struct.pollfd*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.event* %1, %struct.event** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pollop*
  store %struct.pollop* %10, %struct.pollop** %6, align 8
  store %struct.pollfd* null, %struct.pollfd** %7, align 8
  %11 = load %struct.event*, %struct.event** %5, align 8
  %12 = getelementptr inbounds %struct.event, %struct.event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EV_SIGNAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.event*, %struct.event** %5, align 8
  %19 = call i32 @evsignal_del(%struct.event* %18)
  store i32 %19, i32* %3, align 4
  br label %179

20:                                               ; preds = %2
  %21 = load %struct.event*, %struct.event** %5, align 8
  %22 = getelementptr inbounds %struct.event, %struct.event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @EV_READ, align 4
  %25 = load i32, i32* @EV_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %179

30:                                               ; preds = %20
  %31 = load %struct.pollop*, %struct.pollop** %6, align 8
  %32 = call i32 @poll_check_ok(%struct.pollop* %31)
  %33 = load %struct.pollop*, %struct.pollop** %6, align 8
  %34 = getelementptr inbounds %struct.pollop, %struct.pollop* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.event*, %struct.event** %5, align 8
  %37 = getelementptr inbounds %struct.event, %struct.event* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %179

45:                                               ; preds = %30
  %46 = load %struct.pollop*, %struct.pollop** %6, align 8
  %47 = getelementptr inbounds %struct.pollop, %struct.pollop* %46, i32 0, i32 2
  %48 = load %struct.pollfd*, %struct.pollfd** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %48, i64 %50
  store %struct.pollfd* %51, %struct.pollfd** %7, align 8
  %52 = load %struct.event*, %struct.event** %5, align 8
  %53 = getelementptr inbounds %struct.event, %struct.event* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @EV_READ, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %45
  %59 = load i32, i32* @POLLIN, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %62 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.pollop*, %struct.pollop** %6, align 8
  %66 = getelementptr inbounds %struct.pollop, %struct.pollop* %65, i32 0, i32 4
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %58, %45
  %72 = load %struct.event*, %struct.event** %5, align 8
  %73 = getelementptr inbounds %struct.event, %struct.event* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @EV_WRITE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load i32, i32* @POLLOUT, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %82 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.pollop*, %struct.pollop** %6, align 8
  %86 = getelementptr inbounds %struct.pollop, %struct.pollop* %85, i32 0, i32 3
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %78, %71
  %92 = load %struct.pollop*, %struct.pollop** %6, align 8
  %93 = call i32 @poll_check_ok(%struct.pollop* %92)
  %94 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %95 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %179

99:                                               ; preds = %91
  %100 = load %struct.pollop*, %struct.pollop** %6, align 8
  %101 = getelementptr inbounds %struct.pollop, %struct.pollop* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.event*, %struct.event** %5, align 8
  %104 = getelementptr inbounds %struct.event, %struct.event* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 0, i32* %106, align 4
  %107 = load %struct.pollop*, %struct.pollop** %6, align 8
  %108 = getelementptr inbounds %struct.pollop, %struct.pollop* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.pollop*, %struct.pollop** %6, align 8
  %113 = getelementptr inbounds %struct.pollop, %struct.pollop* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %116, label %176

116:                                              ; preds = %99
  %117 = load %struct.pollop*, %struct.pollop** %6, align 8
  %118 = getelementptr inbounds %struct.pollop, %struct.pollop* %117, i32 0, i32 2
  %119 = load %struct.pollfd*, %struct.pollfd** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %119, i64 %121
  %123 = load %struct.pollop*, %struct.pollop** %6, align 8
  %124 = getelementptr inbounds %struct.pollop, %struct.pollop* %123, i32 0, i32 2
  %125 = load %struct.pollfd*, %struct.pollfd** %124, align 8
  %126 = load %struct.pollop*, %struct.pollop** %6, align 8
  %127 = getelementptr inbounds %struct.pollop, %struct.pollop* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %125, i64 %129
  %131 = call i32 @memcpy(%struct.pollfd* %122, %struct.pollfd* %130, i32 16)
  %132 = load %struct.pollop*, %struct.pollop** %6, align 8
  %133 = getelementptr inbounds %struct.pollop, %struct.pollop* %132, i32 0, i32 4
  %134 = load i32**, i32*** %133, align 8
  %135 = load %struct.pollop*, %struct.pollop** %6, align 8
  %136 = getelementptr inbounds %struct.pollop, %struct.pollop* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %134, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.pollop*, %struct.pollop** %6, align 8
  %142 = getelementptr inbounds %struct.pollop, %struct.pollop* %141, i32 0, i32 4
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  store i32* %140, i32** %146, align 8
  %147 = load %struct.pollop*, %struct.pollop** %6, align 8
  %148 = getelementptr inbounds %struct.pollop, %struct.pollop* %147, i32 0, i32 3
  %149 = load i32**, i32*** %148, align 8
  %150 = load %struct.pollop*, %struct.pollop** %6, align 8
  %151 = getelementptr inbounds %struct.pollop, %struct.pollop* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %149, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.pollop*, %struct.pollop** %6, align 8
  %157 = getelementptr inbounds %struct.pollop, %struct.pollop* %156, i32 0, i32 3
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  store i32* %155, i32** %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  %164 = load %struct.pollop*, %struct.pollop** %6, align 8
  %165 = getelementptr inbounds %struct.pollop, %struct.pollop* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.pollop*, %struct.pollop** %6, align 8
  %168 = getelementptr inbounds %struct.pollop, %struct.pollop* %167, i32 0, i32 2
  %169 = load %struct.pollfd*, %struct.pollfd** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %169, i64 %171
  %173 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32, i32* %166, i64 %174
  store i32 %163, i32* %175, align 4
  br label %176

176:                                              ; preds = %116, %99
  %177 = load %struct.pollop*, %struct.pollop** %6, align 8
  %178 = call i32 @poll_check_ok(%struct.pollop* %177)
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %176, %98, %44, %29, %17
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @evsignal_del(%struct.event*) #1

declare dso_local i32 @poll_check_ok(%struct.pollop*) #1

declare dso_local i32 @memcpy(%struct.pollfd*, %struct.pollfd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
