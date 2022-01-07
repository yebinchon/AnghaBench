; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_rfc2553.c_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_rfc2553.c_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i64 }
%struct.servent = type { i32, i32 }
%struct.sockaddr_in = type { i16 }
%struct.sockaddr_in6 = type { i16 }

@EAI_NONAME = common dso_local global i32 0, align 4
@EAI_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@EAI_SOCKTYPE = common dso_local global i32 0, align 4
@EAI_FAMILY = common dso_local global i32 0, align 4
@EAI_SERVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getaddrinfo(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.servent*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %8, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %12, align 8
  store i8* null, i8** %14, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @EAI_NONAME, align 4
  store i32 %26, i32* %5, align 4
  br label %203

27:                                               ; preds = %22, %4
  %28 = call %struct.addrinfo* @calloc(i32 24, i32 1)
  store %struct.addrinfo* %28, %struct.addrinfo** %12, align 8
  %29 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %30 = icmp eq %struct.addrinfo* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %32, i32* %5, align 4
  br label %203

33:                                               ; preds = %27
  %34 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %35 = icmp ne %struct.addrinfo* %34, null
  br i1 %35, label %36, label %101

36:                                               ; preds = %33
  %37 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %16, align 4
  %63 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %18, align 4
  %66 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %15, align 4
  switch i32 %69, label %98 [
    i32 131, label %70
    i32 134, label %77
    i32 133, label %77
    i32 132, label %88
  ]

70:                                               ; preds = %36
  %71 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %76 [
    i32 128, label %74
    i32 130, label %75
  ]

74:                                               ; preds = %70
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %76

75:                                               ; preds = %70
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %76

76:                                               ; preds = %70, %75, %74
  br label %100

77:                                               ; preds = %36, %36
  %78 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %85 [
    i32 0, label %81
    i32 128, label %82
    i32 130, label %83
    i32 129, label %84
  ]

81:                                               ; preds = %77
  br label %87

82:                                               ; preds = %77
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %87

83:                                               ; preds = %77
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %87

84:                                               ; preds = %77
  br label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @EAI_SOCKTYPE, align 4
  store i32 %86, i32* %5, align 4
  br label %203

87:                                               ; preds = %84, %83, %82, %81
  br label %100

88:                                               ; preds = %36
  %89 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %95 [
    i32 0, label %92
    i32 128, label %93
    i32 130, label %94
  ]

92:                                               ; preds = %88
  br label %97

93:                                               ; preds = %88
  br label %97

94:                                               ; preds = %88
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @EAI_SOCKTYPE, align 4
  store i32 %96, i32* %5, align 4
  br label %203

97:                                               ; preds = %94, %93, %92
  br label %100

98:                                               ; preds = %36
  %99 = load i32, i32* @EAI_FAMILY, align 4
  store i32 %99, i32* %5, align 4
  br label %203

100:                                              ; preds = %97, %87, %76
  br label %102

101:                                              ; preds = %33
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %102

102:                                              ; preds = %101, %100
  %103 = load i8*, i8** %6, align 8
  %104 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %105 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %106 = call i32 @do_nodename(i8* %103, %struct.addrinfo* %104, %struct.addrinfo* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %111 = call i32 @freeaddrinfo(%struct.addrinfo* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %5, align 4
  br label %203

113:                                              ; preds = %102
  %114 = load i8*, i8** %7, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %172

116:                                              ; preds = %113
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @strtol(i8* %117, i8** %19, i32 10)
  store i32 %118, i32* %13, align 4
  %119 = load i8*, i8** %19, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %116
  %124 = load i32, i32* %16, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @EAI_SOCKTYPE, align 4
  store i32 %127, i32* %5, align 4
  br label %203

128:                                              ; preds = %123
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %13, align 4
  %133 = icmp sgt i32 %132, 65535
  br i1 %133, label %134, label %136

134:                                              ; preds = %131, %128
  %135 = load i32, i32* @EAI_SERVICE, align 4
  store i32 %135, i32* %5, align 4
  br label %203

136:                                              ; preds = %131
  %137 = load i32, i32* %13, align 4
  %138 = trunc i32 %137 to i16
  %139 = call i32 @htons(i16 zeroext %138)
  store i32 %139, i32* %13, align 4
  br label %171

140:                                              ; preds = %116
  %141 = load i8*, i8** %7, align 8
  %142 = load i8*, i8** %14, align 8
  %143 = call %struct.servent* @getservbyname(i8* %141, i8* %142)
  store %struct.servent* %143, %struct.servent** %11, align 8
  %144 = load %struct.servent*, %struct.servent** %11, align 8
  %145 = icmp eq %struct.servent* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @EAI_SERVICE, align 4
  store i32 %147, i32* %5, align 4
  br label %203

148:                                              ; preds = %140
  %149 = load %struct.servent*, %struct.servent** %11, align 8
  %150 = getelementptr inbounds %struct.servent, %struct.servent* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  %155 = load %struct.servent*, %struct.servent** %11, align 8
  %156 = getelementptr inbounds %struct.servent, %struct.servent* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @strcmp(i32 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 128, i32* %16, align 4
  br label %169

161:                                              ; preds = %154
  %162 = load %struct.servent*, %struct.servent** %11, align 8
  %163 = getelementptr inbounds %struct.servent, %struct.servent* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @strcmp(i32 %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 130, i32* %16, align 4
  br label %168

168:                                              ; preds = %167, %161
  br label %169

169:                                              ; preds = %168, %160
  br label %170

170:                                              ; preds = %169, %148
  br label %171

171:                                              ; preds = %170, %136
  br label %173

172:                                              ; preds = %113
  store i32 0, i32* %13, align 4
  br label %173

173:                                              ; preds = %172, %171
  %174 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %175 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 134
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load i32, i32* %13, align 4
  %180 = trunc i32 %179 to i16
  %181 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %182 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.sockaddr_in*
  %185 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %184, i32 0, i32 0
  store i16 %180, i16* %185, align 2
  br label %200

186:                                              ; preds = %173
  %187 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %188 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 133
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load i32, i32* %13, align 4
  %193 = trunc i32 %192 to i16
  %194 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %195 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to %struct.sockaddr_in6*
  %198 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %197, i32 0, i32 0
  store i16 %193, i16* %198, align 2
  br label %199

199:                                              ; preds = %191, %186
  br label %200

200:                                              ; preds = %199, %178
  %201 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %202 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %201, %struct.addrinfo** %202, align 8
  store i32 0, i32* %5, align 4
  br label %203

203:                                              ; preds = %200, %146, %134, %126, %109, %98, %95, %85, %31, %25
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local %struct.addrinfo* @calloc(i32, i32) #1

declare dso_local i32 @do_nodename(i8*, %struct.addrinfo*, %struct.addrinfo*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
