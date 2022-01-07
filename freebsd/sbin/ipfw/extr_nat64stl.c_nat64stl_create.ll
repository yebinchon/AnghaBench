; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64stl.c_nat64stl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64stl.c_nat64stl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"64:ff9b::\00", align 1
@NAT64STL_HAS_PREFIX6 = common dso_local global i32 0, align 4
@nat64newcmds = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"table name required\00", align 1
@NAT64STL_HAS_TABLE4 = common dso_local global i32 0, align 4
@NAT64STL_HAS_TABLE6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"IPv6 prefix6 required\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Bad prefix: %s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Bad prefix length: %s\00", align 1
@NAT64_LOG = common dso_local global i32 0, align 4
@NAT64_ALLOW_PRIVATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"table4 required\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"table6 required\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"prefix6 required\00", align 1
@IP_FW_NAT64STL_CREATE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"nat64stl instance creation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8**)* @nat64stl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64stl_create(i8* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca [44 x i8], align 16
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %15 = getelementptr inbounds [44 x i8], [44 x i8]* %9, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 44)
  %17 = getelementptr inbounds [44 x i8], [44 x i8]* %9, i64 0, i64 0
  %18 = bitcast i8* %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 1
  %21 = bitcast %struct.TYPE_3__* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %10, align 8
  %22 = load i32, i32* @AF_INET6, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = call i32 @inet_pton(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 96, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @NAT64STL_HAS_PREFIX6, align 4
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %147, %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %148

35:                                               ; preds = %32
  %36 = load i32, i32* @nat64newcmds, align 4
  %37 = load i8**, i8*** %8, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @get_token(i32 %36, i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %7, align 4
  %42 = load i8**, i8*** %8, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %8, align 8
  %44 = load i32, i32* %12, align 4
  switch i32 %44, label %147 [
    i32 129, label %45
    i32 128, label %60
    i32 132, label %75
    i32 134, label %121
    i32 133, label %127
    i32 131, label %134
    i32 130, label %140
  ]

45:                                               ; preds = %35
  %46 = call i32 @NEED1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @table_fill_ntlv(i32* %48, i8* %50, i32 %51, i32 4)
  %53 = load i32, i32* @NAT64STL_HAS_TABLE4, align 4
  %54 = load i32, i32* %13, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  %58 = load i8**, i8*** %8, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %8, align 8
  br label %147

60:                                               ; preds = %35
  %61 = call i32 @NEED1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i8**, i8*** %8, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @table_fill_ntlv(i32* %63, i8* %65, i32 %66, i32 6)
  %68 = load i32, i32* @NAT64STL_HAS_TABLE6, align 4
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %7, align 4
  %73 = load i8**, i8*** %8, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %8, align 8
  br label %147

75:                                               ; preds = %35
  %76 = call i32 @NEED1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i8**, i8*** %8, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 47)
  store i8* %79, i8** %14, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %14, align 8
  store i8 0, i8* %82, align 1
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i32, i32* @AF_INET6, align 4
  %86 = load i8**, i8*** %8, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = call i32 @inet_pton(i32 %85, i8* %87, i32* %89)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load i32, i32* @EX_USAGE, align 4
  %94 = load i8**, i8*** %8, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32, i8*, ...) @errx(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %92, %84
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 @strtol(i8* %98, i32* null, i32 10)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ipfw_check_nat64prefix(i32* %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %97
  %110 = load i32, i32* @EX_USAGE, align 4
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 (i32, i8*, ...) @errx(i32 %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %109, %97
  %114 = load i32, i32* @NAT64STL_HAS_PREFIX6, align 4
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %7, align 4
  %119 = load i8**, i8*** %8, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i32 1
  store i8** %120, i8*** %8, align 8
  br label %147

121:                                              ; preds = %35
  %122 = load i32, i32* @NAT64_LOG, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %147

127:                                              ; preds = %35
  %128 = load i32, i32* @NAT64_LOG, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %147

134:                                              ; preds = %35
  %135 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %147

140:                                              ; preds = %35
  %141 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %35, %140, %134, %127, %121, %113, %60, %45
  br label %32

148:                                              ; preds = %32
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @NAT64STL_HAS_TABLE4, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @NAT64STL_HAS_TABLE4, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* @EX_USAGE, align 4
  %156 = call i32 (i32, i8*, ...) @errx(i32 %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %148
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @NAT64STL_HAS_TABLE6, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @NAT64STL_HAS_TABLE6, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32, i32* @EX_USAGE, align 4
  %165 = call i32 (i32, i8*, ...) @errx(i32 %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %157
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @NAT64STL_HAS_PREFIX6, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @NAT64STL_HAS_PREFIX6, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* @EX_USAGE, align 4
  %174 = call i32 (i32, i8*, ...) @errx(i32 %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %166
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  store i32 28, i32* %179, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  store i32 44, i32* %181, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i8*, i8** %5, align 8
  %186 = call i32 @strlcpy(i32 %184, i8* %185, i32 4)
  %187 = load i32, i32* @IP_FW_NAT64STL_CREATE, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 3
  %190 = call i64 @do_set3(i32 %187, i32* %189, i32 44)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %175
  %193 = load i32, i32* @EX_OSERR, align 4
  %194 = call i32 @err(i32 %193, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %175
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @get_token(i32, i8*, i8*) #1

declare dso_local i32 @NEED1(i8*) #1

declare dso_local i32 @table_fill_ntlv(i32*, i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @ipfw_check_nat64prefix(i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @do_set3(i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
