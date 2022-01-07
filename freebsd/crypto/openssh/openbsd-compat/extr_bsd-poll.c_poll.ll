; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-poll.c_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-poll.c_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.timeval = type { i32, i32 }

@FD_SETSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NFDBITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll(%struct.pollfd* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.timeval, align 4
  %18 = alloca %struct.timeval*, align 8
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store %struct.timeval* null, %struct.timeval** %18, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %38, %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i64 %25
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @FD_SETSIZE, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %203

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @MAX(i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %19

41:                                               ; preds = %19
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @NFDBITS, align 4
  %45 = call i64 @howmany(i32 %43, i32 %44)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = call i32* @calloc(i64 %46, i32 4)
  store i32* %47, i32** %13, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %16, align 8
  %51 = call i32* @calloc(i64 %50, i32 4)
  store i32* %51, i32** %14, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %16, align 8
  %55 = call i32* @calloc(i64 %54, i32 4)
  store i32* %55, i32** %15, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %49, %41
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %190

59:                                               ; preds = %53
  store i64 0, i64* %8, align 8
  br label %60

60:                                               ; preds = %106, %59
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %60
  %65 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %65, i64 %66
  %68 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %106

73:                                               ; preds = %64
  %74 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %74, i64 %75
  %77 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @POLLIN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @FD_SET(i32 %83, i32* %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @FD_SET(i32 %86, i32* %87)
  br label %89

89:                                               ; preds = %82, %73
  %90 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %90, i64 %91
  %93 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @POLLOUT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @FD_SET(i32 %99, i32* %100)
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @FD_SET(i32 %102, i32* %103)
  br label %105

105:                                              ; preds = %98, %89
  br label %106

106:                                              ; preds = %105, %72
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %8, align 8
  br label %60

109:                                              ; preds = %60
  %110 = load i32, i32* %7, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = sdiv i32 %113, 1000
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = srem i32 %116, 1000
  %118 = mul nsw i32 %117, 1000
  %119 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  store %struct.timeval* %17, %struct.timeval** %18, align 8
  br label %120

120:                                              ; preds = %112, %109
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  %123 = load i32*, i32** %13, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = load %struct.timeval*, %struct.timeval** %18, align 8
  %127 = call i32 @select(i32 %122, i32* %123, i32* %124, i32* %125, %struct.timeval* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* @errno, align 4
  store i32 %128, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %129

129:                                              ; preds = %186, %120
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %6, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %189

133:                                              ; preds = %129
  %134 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %134, i64 %135
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %11, align 4
  %139 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %139, i64 %140
  %142 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %141, i32 0, i32 2
  store i32 0, i32* %142, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %186

146:                                              ; preds = %133
  %147 = load i32, i32* %11, align 4
  %148 = load i32*, i32** %13, align 8
  %149 = call i64 @FD_ISSET(i32 %147, i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i32, i32* @POLLIN, align 4
  %153 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %153, i64 %154
  %156 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %152
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %151, %146
  %160 = load i32, i32* %11, align 4
  %161 = load i32*, i32** %14, align 8
  %162 = call i64 @FD_ISSET(i32 %160, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load i32, i32* @POLLOUT, align 4
  %166 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %166, i64 %167
  %169 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %164, %159
  %173 = load i32, i32* %11, align 4
  %174 = load i32*, i32** %15, align 8
  %175 = call i64 @FD_ISSET(i32 %173, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i32, i32* @POLLERR, align 4
  %179 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %180 = load i64, i64* %8, align 8
  %181 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %179, i64 %180
  %182 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %178
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %177, %172
  br label %186

186:                                              ; preds = %185, %145
  %187 = load i64, i64* %8, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %8, align 8
  br label %129

189:                                              ; preds = %129
  br label %190

190:                                              ; preds = %189, %57
  %191 = load i32*, i32** %13, align 8
  %192 = call i32 @free(i32* %191)
  %193 = load i32*, i32** %14, align 8
  %194 = call i32 @free(i32* %193)
  %195 = load i32*, i32** %15, align 8
  %196 = call i32 @free(i32* %195)
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %201

199:                                              ; preds = %190
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* @errno, align 4
  br label %201

201:                                              ; preds = %199, %190
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %201, %32
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
