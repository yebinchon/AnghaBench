; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_parse_option_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_parse_option_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.packet = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }

@DHO_END = common dso_local global i8 0, align 1
@DHO_PAD = common dso_local global i32 0, align 4
@bad_options = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"option %s (%d) %s.\00", align 1
@dhcp_options = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"larger than buffer\00", align 1
@bad_options_max = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [100 x i8] c"Many bogus options seen in offers. Taking this offer in spite of bogus options - hope for the best!\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"rejecting bogus offer.\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Can't allocate storage for option %s.\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't expand storage for option %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_option_buffer(%struct.packet* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.packet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.packet* %0, %struct.packet** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %7, align 8
  br label %17

17:                                               ; preds = %227, %38, %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @DHO_END, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ult i8* %25, %26
  br label %28

28:                                               ; preds = %24, %17
  %29 = phi i1 [ false, %17 ], [ %27, %24 ]
  br i1 %29, label %30, label %233

30:                                               ; preds = %28
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @DHO_PAD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  br label %17

41:                                               ; preds = %30
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ugt i8* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 65536, i32* %10, align 4
  br label %60

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ugt i8* %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i64, i64* @bad_options, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* @bad_options, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dhcp_options, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* @bad_options, align 8
  %72 = load i64, i64* @bad_options_max, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load %struct.packet*, %struct.packet** %4, align 8
  %76 = getelementptr inbounds %struct.packet, %struct.packet* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  store i64 0, i64* @bad_options, align 8
  %77 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0))
  br label %82

78:                                               ; preds = %60
  %79 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.packet*, %struct.packet** %4, align 8
  %81 = getelementptr inbounds %struct.packet, %struct.packet* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %236

83:                                               ; preds = %47
  %84 = load %struct.packet*, %struct.packet** %4, align 8
  %85 = getelementptr inbounds %struct.packet, %struct.packet* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %132, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i8* @calloc(i32 1, i32 %95)
  store i8* %96, i8** %8, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dhcp_options, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %98, %93
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @memcpy(i8* %107, i8* %109, i32 %110)
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8 0, i8* %115, align 1
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.packet*, %struct.packet** %4, align 8
  %118 = getelementptr inbounds %struct.packet, %struct.packet* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i32 %116, i32* %123, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.packet*, %struct.packet** %4, align 8
  %126 = getelementptr inbounds %struct.packet, %struct.packet* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i8* %124, i8** %131, align 8
  br label %227

132:                                              ; preds = %83
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.packet*, %struct.packet** %4, align 8
  %135 = getelementptr inbounds %struct.packet, %struct.packet* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %133, %141
  %143 = add nsw i32 %142, 1
  %144 = call i8* @calloc(i32 1, i32 %143)
  store i8* %144, i8** %8, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %155, label %147

147:                                              ; preds = %132
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dhcp_options, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %147, %132
  %156 = load i8*, i8** %8, align 8
  %157 = load %struct.packet*, %struct.packet** %4, align 8
  %158 = getelementptr inbounds %struct.packet, %struct.packet* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.packet*, %struct.packet** %4, align 8
  %166 = getelementptr inbounds %struct.packet, %struct.packet* %165, i32 0, i32 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @memcpy(i8* %156, i8* %164, i32 %172)
  %174 = load i8*, i8** %8, align 8
  %175 = load %struct.packet*, %struct.packet** %4, align 8
  %176 = getelementptr inbounds %struct.packet, %struct.packet* %175, i32 0, i32 1
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %174, i64 %183
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @memcpy(i8* %184, i8* %186, i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.packet*, %struct.packet** %4, align 8
  %191 = getelementptr inbounds %struct.packet, %struct.packet* %190, i32 0, i32 1
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, %189
  store i32 %198, i32* %196, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load %struct.packet*, %struct.packet** %4, align 8
  %201 = getelementptr inbounds %struct.packet, %struct.packet* %200, i32 0, i32 1
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %199, i64 %208
  store i8 0, i8* %209, align 1
  %210 = load %struct.packet*, %struct.packet** %4, align 8
  %211 = getelementptr inbounds %struct.packet, %struct.packet* %210, i32 0, i32 1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load i8*, i8** %8, align 8
  %220 = load %struct.packet*, %struct.packet** %4, align 8
  %221 = getelementptr inbounds %struct.packet, %struct.packet* %220, i32 0, i32 1
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  store i8* %219, i8** %226, align 8
  br label %227

227:                                              ; preds = %155, %106
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 2
  %230 = load i8*, i8** %7, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %7, align 8
  br label %17

233:                                              ; preds = %28
  %234 = load %struct.packet*, %struct.packet** %4, align 8
  %235 = getelementptr inbounds %struct.packet, %struct.packet* %234, i32 0, i32 0
  store i32 1, i32* %235, align 8
  br label %236

236:                                              ; preds = %233, %82
  ret void
}

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
