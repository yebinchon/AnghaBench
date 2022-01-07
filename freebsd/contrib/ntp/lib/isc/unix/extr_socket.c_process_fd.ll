; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_process_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_process_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i32*, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, i64, i64 }

@ISC_FALSE = common dso_local global i64 0, align 8
@CLOSE_PENDING = common dso_local global i64 0, align 8
@SELECT_POKE_READ = common dso_local global i32 0, align 4
@SELECT_POKE_WRITE = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i64, i64)* @process_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_fd(%struct.TYPE_10__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* @ISC_FALSE, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* @ISC_FALSE, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @FDLOCK_ID(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @LOCK(i32* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CLOSE_PENDING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @UNLOCK(i32* %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SELECT_POKE_READ, align 4
  %45 = call i32 @unwatch_fd(%struct.TYPE_10__* %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SELECT_POKE_WRITE, align 4
  %49 = call i32 @unwatch_fd(%struct.TYPE_10__* %46, i32 %47, i32 %48)
  br label %154

50:                                               ; preds = %4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %53, i64 %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %9, align 8
  %58 = load i64, i64* @ISC_FALSE, align 8
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %50
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = icmp eq %struct.TYPE_11__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* @ISC_TRUE, align 8
  store i64 %65, i64* %11, align 8
  br label %89

66:                                               ; preds = %61
  %67 = load i64, i64* @ISC_TRUE, align 8
  store i64 %67, i64* %10, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = call i32 @LOCK(i32* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = call i32 @SOCK_DEAD(%struct.TYPE_11__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %66
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = call i32 @dispatch_accept(%struct.TYPE_11__* %80)
  br label %85

82:                                               ; preds = %74
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = call i32 @dispatch_recv(%struct.TYPE_11__* %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i64, i64* @ISC_TRUE, align 8
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %86, %50
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %89
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = icmp eq %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i64, i64* @ISC_TRUE, align 8
  store i64 %96, i64* %12, align 8
  br label %131

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @ISC_TRUE, align 8
  store i64 %101, i64* %10, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = call i32 @LOCK(i32* %103)
  br label %105

105:                                              ; preds = %100, %97
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = call i32 @SOCK_DEAD(%struct.TYPE_11__* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = call i32 @dispatch_connect(%struct.TYPE_11__* %115)
  br label %120

117:                                              ; preds = %109
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = call i32 @dispatch_send(%struct.TYPE_11__* %118)
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %105
  %122 = load i64, i64* @ISC_TRUE, align 8
  store i64 %122, i64* %12, align 8
  br label %123

123:                                              ; preds = %121, %89
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = call i32 @UNLOCK(i32* %128)
  br label %130

130:                                              ; preds = %126, %123
  br label %131

131:                                              ; preds = %130, %95
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call i32 @UNLOCK(i32* %137)
  %139 = load i64, i64* %11, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %131
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @SELECT_POKE_READ, align 4
  %145 = call i32 @unwatch_fd(%struct.TYPE_10__* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %131
  %147 = load i64, i64* %12, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @SELECT_POKE_WRITE, align 4
  %153 = call i32 @unwatch_fd(%struct.TYPE_10__* %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %34, %149, %146
  ret void
}

declare dso_local i32 @FDLOCK_ID(i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @unwatch_fd(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @SOCK_DEAD(%struct.TYPE_11__*) #1

declare dso_local i32 @dispatch_accept(%struct.TYPE_11__*) #1

declare dso_local i32 @dispatch_recv(%struct.TYPE_11__*) #1

declare dso_local i32 @dispatch_connect(%struct.TYPE_11__*) #1

declare dso_local i32 @dispatch_send(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
