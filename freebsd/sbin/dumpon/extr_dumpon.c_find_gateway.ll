; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dumpon/extr_dumpon.c_find_gateway.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dumpon/extr_dumpon.c_find_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { %struct.TYPE_3__*, i32, %struct.ifaddrs* }
%struct.TYPE_3__ = type { i64 }
%struct.rt_msghdr = type { i64, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_dl = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getifaddrs\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"couldn't find interface index for '%s'\00", align 1
@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NET_RT_DUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"sysctl(NET_RT_DUMP)\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@RTM_VERSION = common dso_local global i64 0, align 8
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTAX_MAX = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @find_gateway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_gateway(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ifaddrs*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.rt_msghdr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr_dl*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [7 x i32], align 16
  store i8* %0, i8** %2, align 8
  %19 = call i64 @getifaddrs(%struct.ifaddrs** %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EX_OSERR, align 4
  %23 = call i32 @err(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  store %struct.ifaddrs* %25, %struct.ifaddrs** %3, align 8
  br label %26

26:                                               ; preds = %55, %24
  %27 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %28 = icmp ne %struct.ifaddrs* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %31 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_LINK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %55

38:                                               ; preds = %29
  %39 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %40 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = call i64 @strcmp(i32 %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %47 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = bitcast %struct.TYPE_3__* %48 to i8*
  %50 = bitcast i8* %49 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %50, %struct.sockaddr_dl** %7, align 8
  %51 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %52 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %17, align 4
  br label %59

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %57 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %56, i32 0, i32 2
  %58 = load %struct.ifaddrs*, %struct.ifaddrs** %57, align 8
  store %struct.ifaddrs* %58, %struct.ifaddrs** %3, align 8
  br label %26

59:                                               ; preds = %45, %26
  %60 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %61 = icmp eq %struct.ifaddrs* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %67 = call i32 @freeifaddrs(%struct.ifaddrs* %66)
  %68 = load i32, i32* @CTL_NET, align 4
  %69 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  store i32 %68, i32* %69, align 16
  %70 = load i32, i32* @PF_ROUTE, align 4
  %71 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 2
  store i32 0, i32* %72, align 8
  %73 = load i32, i32* @AF_INET, align 4
  %74 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 3
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @NET_RT_DUMP, align 4
  %76 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 4
  store i32 %75, i32* %76, align 16
  %77 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 5
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 6
  store i32 -1, i32* %78, align 8
  br label %79

79:                                               ; preds = %106, %65
  %80 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %82 = call i32 @nitems(i32* %81)
  %83 = call i32 @sysctl(i32* %80, i32 %82, i8* null, i64* %14, i32* null, i32 0)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @EX_OSERR, align 4
  %87 = call i32 @err(i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %79
  %89 = load i64, i64* %14, align 8
  %90 = call i8* @malloc(i64 %89)
  store i8* %90, i8** %11, align 8
  %91 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %92 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %93 = call i32 @nitems(i32* %92)
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @sysctl(i32* %91, i32 %93, i8* %94, i64* %14, i32* null, i32 0)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %109

99:                                               ; preds = %88
  %100 = load i64, i64* @errno, align 8
  %101 = load i64, i64* @ENOMEM, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EX_OSERR, align 4
  %105 = call i32 @err(i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @free(i8* %107)
  br label %79

109:                                              ; preds = %98
  store i8* null, i8** %13, align 8
  %110 = load i8*, i8** %11, align 8
  store i8* %110, i8** %12, align 8
  br label %111

111:                                              ; preds = %202, %109
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = load i64, i64* %14, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = icmp ult i8* %112, %115
  br i1 %116, label %117, label %209

117:                                              ; preds = %111
  %118 = load i8*, i8** %12, align 8
  %119 = bitcast i8* %118 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %119, %struct.rt_msghdr** %5, align 8
  %120 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %121 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @RTM_VERSION, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %202

126:                                              ; preds = %117
  %127 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %128 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @RTF_GATEWAY, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %126
  %134 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %135 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133, %126
  br label %202

140:                                              ; preds = %133
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %9, align 8
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %10, align 8
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %8, align 8
  %141 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %142 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %141, i64 1
  %143 = bitcast %struct.rt_msghdr* %142 to %struct.sockaddr*
  store %struct.sockaddr* %143, %struct.sockaddr** %6, align 8
  store i32 0, i32* %16, align 4
  br label %144

144:                                              ; preds = %179, %140
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @RTAX_MAX, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %182

148:                                              ; preds = %144
  %149 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %150 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = shl i32 1, %152
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %148
  %157 = load i32, i32* %16, align 4
  switch i32 %157, label %170 [
    i32 130, label %158
    i32 129, label %162
    i32 128, label %166
  ]

158:                                              ; preds = %156
  %159 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %160 = bitcast %struct.sockaddr* %159 to i8*
  %161 = bitcast i8* %160 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %161, %struct.sockaddr_in** %8, align 8
  br label %170

162:                                              ; preds = %156
  %163 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %164 = bitcast %struct.sockaddr* %163 to i8*
  %165 = bitcast i8* %164 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %165, %struct.sockaddr_in** %10, align 8
  br label %170

166:                                              ; preds = %156
  %167 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %168 = bitcast %struct.sockaddr* %167 to i8*
  %169 = bitcast i8* %168 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %169, %struct.sockaddr_in** %9, align 8
  br label %170

170:                                              ; preds = %156, %166, %162, %158
  br label %171

171:                                              ; preds = %170, %148
  %172 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %173 = bitcast %struct.sockaddr* %172 to i8*
  %174 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %175 = call i32 @SA_SIZE(%struct.sockaddr* %174)
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = bitcast i8* %177 to %struct.sockaddr*
  store %struct.sockaddr* %178, %struct.sockaddr** %6, align 8
  br label %179

179:                                              ; preds = %171
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  br label %144

182:                                              ; preds = %144
  %183 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %184 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @INADDR_ANY, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %182
  %190 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %191 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %197 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i8* @inet_ntoa(i64 %199)
  store i8* %200, i8** %13, align 8
  br label %209

201:                                              ; preds = %189, %182
  br label %202

202:                                              ; preds = %201, %139, %125
  %203 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %204 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load i8*, i8** %12, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8* %208, i8** %12, align 8
  br label %111

209:                                              ; preds = %195, %111
  %210 = load i8*, i8** %11, align 8
  %211 = call i32 @free(i8* %210)
  %212 = load i8*, i8** %13, align 8
  ret i8* %212
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @SA_SIZE(%struct.sockaddr*) #1

declare dso_local i8* @inet_ntoa(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
