; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_srq_pingpong.c_pp_client_exch_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_srq_pingpong.c_pp_client_exch_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_dest = type { i32, i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s for %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Couldn't connect to %s:%d\0A\00", align 1
@MAX_QP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%04x:%06x:%06x:%s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't send local address\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"client read\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%d/%d: Couldn't read remote address [%d]\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%x:%x:%x:%s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"client write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pingpong_dest* (i8*, i32, %struct.pingpong_dest*)* @pp_client_exch_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pingpong_dest* @pp_client_exch_dest(i8* %0, i32 %1, %struct.pingpong_dest* %2) #0 {
  %4 = alloca %struct.pingpong_dest*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pingpong_dest*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [52 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pingpong_dest*, align 8
  %18 = alloca [33 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pingpong_dest* %2, %struct.pingpong_dest** %7, align 8
  %19 = bitcast %struct.addrinfo* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  %21 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  %23 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %23, i32* %22, align 8
  store i32 -1, i32* %16, align 4
  store %struct.pingpong_dest* null, %struct.pingpong_dest** %17, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @asprintf(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store %struct.pingpong_dest* null, %struct.pingpong_dest** %4, align 8
  br label %221

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @getaddrinfo(i8* %29, i8* %30, %struct.addrinfo* %10, %struct.addrinfo** %8)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i8* @gai_strerror(i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @free(i8* %41)
  store %struct.pingpong_dest* null, %struct.pingpong_dest** %4, align 8
  br label %221

43:                                               ; preds = %28
  %44 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %44, %struct.addrinfo** %9, align 8
  br label %45

45:                                               ; preds = %76, %43
  %46 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %47 = icmp ne %struct.addrinfo* %46, null
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @socket(i32 %51, i32 %54, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %48
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @connect(i32 %62, i32 %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %80

72:                                               ; preds = %61
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @close(i32 %73)
  store i32 -1, i32* %16, align 4
  br label %75

75:                                               ; preds = %72, %48
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %77, i32 0, i32 5
  %79 = load %struct.addrinfo*, %struct.addrinfo** %78, align 8
  store %struct.addrinfo* %79, %struct.addrinfo** %9, align 8
  br label %45

80:                                               ; preds = %71, %45
  %81 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %82 = call i32 @freeaddrinfo_null(%struct.addrinfo* %81)
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i32, i32* @stderr, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %89, i32 %90)
  store %struct.pingpong_dest* null, %struct.pingpong_dest** %4, align 8
  br label %221

92:                                               ; preds = %80
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %135, %92
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @MAX_QP, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %93
  %98 = load %struct.pingpong_dest*, %struct.pingpong_dest** %7, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %98, i64 %100
  %102 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %101, i32 0, i32 3
  %103 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 0
  %104 = call i32 @gid_to_wire_gid(i32* %102, i8* %103)
  %105 = getelementptr inbounds [52 x i8], [52 x i8]* %12, i64 0, i64 0
  %106 = load %struct.pingpong_dest*, %struct.pingpong_dest** %7, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %106, i64 %108
  %110 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.pingpong_dest*, %struct.pingpong_dest** %7, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %112, i64 %114
  %116 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pingpong_dest*, %struct.pingpong_dest** %7, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %118, i64 %120
  %122 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 0
  %125 = call i32 @sprintf(i8* %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %117, i32 %123, i8* %124)
  %126 = load i32, i32* %16, align 4
  %127 = getelementptr inbounds [52 x i8], [52 x i8]* %12, i64 0, i64 0
  %128 = call i32 @write(i32 %126, i8* %127, i32 52)
  %129 = sext i32 %128 to i64
  %130 = icmp ne i64 %129, 52
  br i1 %130, label %131, label %134

131:                                              ; preds = %97
  %132 = load i32, i32* @stderr, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %217

134:                                              ; preds = %97
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %93

138:                                              ; preds = %93
  %139 = load i32, i32* @MAX_QP, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 16
  %142 = trunc i64 %141 to i32
  %143 = call %struct.pingpong_dest* @malloc(i32 %142)
  store %struct.pingpong_dest* %143, %struct.pingpong_dest** %17, align 8
  %144 = load %struct.pingpong_dest*, %struct.pingpong_dest** %17, align 8
  %145 = icmp ne %struct.pingpong_dest* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %138
  br label %217

147:                                              ; preds = %138
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %206, %147
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @MAX_QP, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %209

152:                                              ; preds = %148
  store i32 0, i32* %13, align 4
  br label %153

153:                                              ; preds = %176, %152
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp ult i64 %155, 52
  br i1 %156, label %157, label %180

157:                                              ; preds = %153
  %158 = load i32, i32* %16, align 4
  %159 = getelementptr inbounds [52 x i8], [52 x i8]* %12, i64 0, i64 0
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = sub i64 52, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 @read(i32 %158, i8* %162, i32 %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %157
  %171 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %172 = load i32, i32* @stderr, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %15, align 4
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %173, i32 52, i32 %174)
  br label %217

176:                                              ; preds = %157
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %13, align 4
  br label %153

180:                                              ; preds = %153
  %181 = getelementptr inbounds [52 x i8], [52 x i8]* %12, i64 0, i64 0
  %182 = load %struct.pingpong_dest*, %struct.pingpong_dest** %17, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %182, i64 %184
  %186 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %185, i32 0, i32 0
  %187 = load %struct.pingpong_dest*, %struct.pingpong_dest** %17, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %187, i64 %189
  %191 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %190, i32 0, i32 1
  %192 = load %struct.pingpong_dest*, %struct.pingpong_dest** %17, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %192, i64 %194
  %196 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %195, i32 0, i32 2
  %197 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 0
  %198 = call i32 @sscanf(i8* %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %186, i32* %191, i32* %196, i8* %197)
  %199 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 0
  %200 = load %struct.pingpong_dest*, %struct.pingpong_dest** %17, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %200, i64 %202
  %204 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %203, i32 0, i32 3
  %205 = call i32 @wire_gid_to_gid(i8* %199, i32* %204)
  br label %206

206:                                              ; preds = %180
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  br label %148

209:                                              ; preds = %148
  %210 = load i32, i32* %16, align 4
  %211 = call i32 @write(i32 %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %212 = sext i32 %211 to i64
  %213 = icmp ne i64 %212, 5
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %217

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %216, %214, %170, %146, %131
  %218 = load i32, i32* %16, align 4
  %219 = call i32 @close(i32 %218)
  %220 = load %struct.pingpong_dest*, %struct.pingpong_dest** %17, align 8
  store %struct.pingpong_dest* %220, %struct.pingpong_dest** %4, align 8
  br label %221

221:                                              ; preds = %217, %87, %34, %27
  %222 = load %struct.pingpong_dest*, %struct.pingpong_dest** %4, align 8
  ret %struct.pingpong_dest* %222
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @connect(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @freeaddrinfo_null(%struct.addrinfo*) #2

declare dso_local i32 @gid_to_wire_gid(i32*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local %struct.pingpong_dest* @malloc(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i8*) #2

declare dso_local i32 @wire_gid_to_gid(i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
