; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_process_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_process_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@num_clients = common dso_local global i32 0, align 4
@clients = common dso_local global %struct.client** null, align 8
@WAITING_READ = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@WAITING_WRITE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@WAITING_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_loop() #0 {
  %1 = alloca %struct.pollfd*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  br label %5

5:                                                ; preds = %201, %0
  %6 = load i32, i32* @num_clients, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %204

8:                                                ; preds = %5
  %9 = load i32, i32* @num_clients, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 12
  %12 = trunc i64 %11 to i32
  %13 = call %struct.pollfd* @malloc(i32 %12)
  store %struct.pollfd* %13, %struct.pollfd** %1, align 8
  %14 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %15 = icmp eq %struct.pollfd* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 (...) @abort() #3
  unreachable

18:                                               ; preds = %8
  %19 = load i32, i32* @num_clients, align 4
  store i32 %19, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %87, %18
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %90

24:                                               ; preds = %20
  %25 = load %struct.client**, %struct.client*** @clients, align 8
  %26 = load i32, i32* %2, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.client*, %struct.client** %25, i64 %27
  %29 = load %struct.client*, %struct.client** %28, align 8
  %30 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %33 = load i32, i32* %2, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i64 %34
  %36 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %35, i32 0, i32 2
  store i32 %31, i32* %36, align 4
  %37 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %38 = load i32, i32* %2, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %37, i64 %39
  %41 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.client**, %struct.client*** @clients, align 8
  %43 = load i32, i32* %2, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.client*, %struct.client** %42, i64 %44
  %46 = load %struct.client*, %struct.client** %45, align 8
  %47 = getelementptr inbounds %struct.client, %struct.client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @WAITING_READ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %24
  %53 = load i32, i32* @POLLIN, align 4
  %54 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %55 = load i32, i32* %2, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %54, i64 %56
  %58 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %53
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %52, %24
  %62 = load %struct.client**, %struct.client*** @clients, align 8
  %63 = load i32, i32* %2, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.client*, %struct.client** %62, i64 %64
  %66 = load %struct.client*, %struct.client** %65, align 8
  %67 = getelementptr inbounds %struct.client, %struct.client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @WAITING_WRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %61
  %73 = load i32, i32* @POLLOUT, align 4
  %74 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %75 = load i32, i32* %2, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %74, i64 %76
  %78 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %73
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %72, %61
  %82 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %83 = load i32, i32* %2, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %82, i64 %84
  %86 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %2, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %20

90:                                               ; preds = %20
  %91 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @poll(%struct.pollfd* %91, i32 %92, i32 -1)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %161, %90
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %164

98:                                               ; preds = %94
  %99 = load %struct.client**, %struct.client*** @clients, align 8
  %100 = load i32, i32* %2, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.client*, %struct.client** %99, i64 %101
  %103 = load %struct.client*, %struct.client** %102, align 8
  %104 = icmp eq %struct.client* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %161

106:                                              ; preds = %98
  %107 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %108 = load i32, i32* %2, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %107, i64 %109
  %111 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @POLLERR, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %106
  %117 = load i32, i32* @WAITING_CLOSE, align 4
  %118 = load %struct.client**, %struct.client*** @clients, align 8
  %119 = load i32, i32* %2, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.client*, %struct.client** %118, i64 %120
  %122 = load %struct.client*, %struct.client** %121, align 8
  %123 = getelementptr inbounds %struct.client, %struct.client* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %117
  store i32 %125, i32* %123, align 4
  br label %161

126:                                              ; preds = %106
  %127 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %128 = load i32, i32* %2, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %127, i64 %129
  %131 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @POLLIN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %126
  %137 = load %struct.client**, %struct.client*** @clients, align 8
  %138 = load i32, i32* %2, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.client*, %struct.client** %137, i64 %139
  %141 = load %struct.client*, %struct.client** %140, align 8
  %142 = call i32 @handle_read(%struct.client* %141)
  br label %143

143:                                              ; preds = %136, %126
  %144 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %145 = load i32, i32* %2, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %144, i64 %146
  %148 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @POLLOUT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %143
  %154 = load %struct.client**, %struct.client*** @clients, align 8
  %155 = load i32, i32* %2, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.client*, %struct.client** %154, i64 %156
  %158 = load %struct.client*, %struct.client** %157, align 8
  %159 = call i32 @handle_write(%struct.client* %158)
  br label %160

160:                                              ; preds = %153, %143
  br label %161

161:                                              ; preds = %160, %116, %105
  %162 = load i32, i32* %2, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %2, align 4
  br label %94

164:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %200, %164
  %166 = load i32, i32* %2, align 4
  %167 = load i32, i32* @num_clients, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %201

169:                                              ; preds = %165
  %170 = load %struct.client**, %struct.client*** @clients, align 8
  %171 = load i32, i32* %2, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.client*, %struct.client** %170, i64 %172
  %174 = load %struct.client*, %struct.client** %173, align 8
  store %struct.client* %174, %struct.client** %4, align 8
  %175 = load %struct.client*, %struct.client** %4, align 8
  %176 = call i64 @maybe_close(%struct.client* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %169
  %179 = load i32, i32* %2, align 4
  %180 = load i32, i32* @num_clients, align 4
  %181 = sub nsw i32 %180, 1
  %182 = icmp ult i32 %179, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load %struct.client**, %struct.client*** @clients, align 8
  %185 = load i32, i32* @num_clients, align 4
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.client*, %struct.client** %184, i64 %187
  %189 = load %struct.client*, %struct.client** %188, align 8
  %190 = load %struct.client**, %struct.client*** @clients, align 8
  %191 = load i32, i32* %2, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.client*, %struct.client** %190, i64 %192
  store %struct.client* %189, %struct.client** %193, align 8
  br label %194

194:                                              ; preds = %183, %178
  %195 = load i32, i32* @num_clients, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* @num_clients, align 4
  br label %200

197:                                              ; preds = %169
  %198 = load i32, i32* %2, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %197, %194
  br label %165

201:                                              ; preds = %165
  %202 = load %struct.pollfd*, %struct.pollfd** %1, align 8
  %203 = call i32 @free(%struct.pollfd* %202)
  br label %5

204:                                              ; preds = %5
  ret void
}

declare dso_local %struct.pollfd* @malloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @handle_read(%struct.client*) #1

declare dso_local i32 @handle_write(%struct.client*) #1

declare dso_local i64 @maybe_close(%struct.client*) #1

declare dso_local i32 @free(%struct.pollfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
