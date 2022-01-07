; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_get_socket_info_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_get_socket_info_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filestat = type { i64, i8*, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8* }
%struct.sockstat = type { i64, i8*, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8* }
%struct.domain = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inpcb = type { i64 }
%struct.protosw = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i32, i64, i64, i64 }
%struct.socket = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i32, i64, i64, i64 }
%struct.unpcb = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"can't read sock at %p\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't read protosw at %p\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"can't read domain at %p\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"can't read domain name at %p\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"can't read inpcb at %p\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"can't read unpcb at %p\00", align 1
@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockstat*, %struct.filestat*, %struct.sockstat*, i8*)* @procstat_get_socket_info_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procstat_get_socket_info_kvm(%struct.sockstat* %0, %struct.filestat* %1, %struct.sockstat* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockstat*, align 8
  %7 = alloca %struct.filestat*, align 8
  %8 = alloca %struct.sockstat*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.domain, align 8
  %11 = alloca %struct.inpcb, align 8
  %12 = alloca %struct.protosw, align 8
  %13 = alloca %struct.socket, align 8
  %14 = alloca %struct.unpcb, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.sockstat* %0, %struct.sockstat** %6, align 8
  store %struct.filestat* %1, %struct.filestat** %7, align 8
  store %struct.sockstat* %2, %struct.sockstat** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.sockstat*, %struct.sockstat** %6, align 8
  %18 = call i32 @assert(%struct.sockstat* %17)
  %19 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %20 = call i32 @assert(%struct.sockstat* %19)
  %21 = load %struct.filestat*, %struct.filestat** %7, align 8
  %22 = bitcast %struct.filestat* %21 to %struct.sockstat*
  %23 = call i32 @assert(%struct.sockstat* %22)
  %24 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %25 = call i32 @bzero(%struct.sockstat* %24, i32 80)
  %26 = load %struct.filestat*, %struct.filestat** %7, align 8
  %27 = getelementptr inbounds %struct.filestat, %struct.filestat* %26, i32 0, i32 12
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %16, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %204

32:                                               ; preds = %4
  %33 = load i8*, i8** %16, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %36 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.sockstat*, %struct.sockstat** %6, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = call i32 @kvm_read_all(%struct.sockstat* %37, i64 %39, %struct.socket* %13, i32 64)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i8*, i8** %16, align 8
  %44 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %204

45:                                               ; preds = %32
  %46 = load %struct.sockstat*, %struct.sockstat** %6, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %struct.protosw* %12 to %struct.socket*
  %50 = call i32 @kvm_read_all(%struct.sockstat* %46, i64 %48, %struct.socket* %49, i32 64)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %204

57:                                               ; preds = %45
  %58 = load %struct.sockstat*, %struct.sockstat** %6, align 8
  %59 = getelementptr inbounds %struct.protosw, %struct.protosw* %12, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = bitcast %struct.domain* %10 to %struct.socket*
  %62 = call i32 @kvm_read_all(%struct.sockstat* %58, i64 %60, %struct.socket* %61, i32 64)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.protosw, %struct.protosw* %12, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %204

69:                                               ; preds = %57
  %70 = load %struct.sockstat*, %struct.sockstat** %6, align 8
  %71 = getelementptr inbounds %struct.domain, %struct.domain* %10, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %74 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @kvm_read(%struct.sockstat* %70, i64 %72, i8* %75, i32 7)
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %15, align 8
  %78 = icmp ult i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.domain, %struct.domain* %10, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %85 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 0, i8* %87, align 1
  br label %94

88:                                               ; preds = %69
  %89 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %90 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %88, %79
  %95 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %98 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %97, i32 0, i32 11
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.protosw, %struct.protosw* %12, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %102 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds %struct.domain, %struct.domain* %10, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %106 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %110 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  %111 = getelementptr inbounds %struct.domain, %struct.domain* %10, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %202 [
    i32 130, label %113
    i32 129, label %113
    i32 128, label %153
  ]

113:                                              ; preds = %94, %94
  %114 = getelementptr inbounds %struct.protosw, %struct.protosw* %12, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @IPPROTO_TCP, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %152

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %118
  %123 = load %struct.sockstat*, %struct.sockstat** %6, align 8
  %124 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = bitcast %struct.inpcb* %11 to i8*
  %127 = call i32 @kvm_read(%struct.sockstat* %123, i64 %125, i8* %126, i32 8)
  %128 = sext i32 %127 to i64
  %129 = icmp ne i64 %128, 8
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %133)
  br label %140

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %11, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %139 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %138, i32 0, i32 4
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %135, %130
  %141 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %145 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %150 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %140, %118
  br label %152

152:                                              ; preds = %151, %113
  br label %203

153:                                              ; preds = %94
  %154 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %201

157:                                              ; preds = %153
  %158 = load %struct.sockstat*, %struct.sockstat** %6, align 8
  %159 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = bitcast %struct.unpcb* %14 to i8*
  %162 = call i32 @kvm_read(%struct.sockstat* %158, i64 %160, i8* %161, i32 8)
  %163 = sext i32 %162 to i64
  %164 = icmp ne i64 %163, 8
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i8*
  %169 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %168)
  br label %200

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %14, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %199

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %179 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %178, i32 0, i32 9
  store i32 %177, i32* %179, align 4
  %180 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %184 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %183, i32 0, i32 8
  store i32 %182, i32* %184, align 8
  %185 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %14, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %188 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %187, i32 0, i32 5
  store i64 %186, i64* %188, align 8
  %189 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %193 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.sockstat*, %struct.sockstat** %8, align 8
  %198 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %174, %170
  br label %200

200:                                              ; preds = %199, %165
  br label %201

201:                                              ; preds = %200, %153
  br label %203

202:                                              ; preds = %94
  br label %203

203:                                              ; preds = %202, %201, %152
  store i32 0, i32* %5, align 4
  br label %212

204:                                              ; preds = %64, %52, %42, %31
  %205 = load i8*, i8** %9, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load i8*, i8** %9, align 8
  %209 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %210 = call i32 @snprintf(i8* %208, i32 %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %211

211:                                              ; preds = %207, %204
  store i32 1, i32* %5, align 4
  br label %212

212:                                              ; preds = %211, %203
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @assert(%struct.sockstat*) #1

declare dso_local i32 @bzero(%struct.sockstat*, i32) #1

declare dso_local i32 @kvm_read_all(%struct.sockstat*, i64, %struct.socket*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @kvm_read(%struct.sockstat*, i64, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
