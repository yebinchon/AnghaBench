; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_read_sysvars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_read_sysvars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ctl_var = type { i32, i64, i8* }

@rpkt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@res_authokay = common dso_local global i64 0, align 8
@ctl_sys_num_events = common dso_local global i64 0, align 8
@CS_MAXCODE = common dso_local global i32 0, align 4
@ext_sys_var = common dso_local global %struct.ctl_var* null, align 8
@sys_var = common dso_local global %struct.ctl_var* null, align 8
@EOV = common dso_local global i32 0, align 4
@CERR_BADVALUE = common dso_local global i32 0, align 4
@CERR_UNKNOWNVAR = common dso_local global i32 0, align 4
@def_sys_var = common dso_local global i32* null, align 8
@DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_sysvars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_sysvars() #0 {
  %1 = alloca %struct.ctl_var*, align 8
  %2 = alloca %struct.ctl_var*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = call i32 (...) @ctlsysstatus()
  %11 = call i32 @htons(i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), align 4
  %12 = load i64, i64* @res_authokay, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i64 0, i64* @ctl_sys_num_events, align 8
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i32, i32* @CS_MAXCODE, align 4
  %17 = add nsw i32 %16, 1
  %18 = load %struct.ctl_var*, %struct.ctl_var** @ext_sys_var, align 8
  %19 = call i32 @count_var(%struct.ctl_var* %18)
  %20 = add nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32* @emalloc_zero(i64 %22)
  store i32* %23, i32** %8, align 8
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %86, %15
  %25 = load %struct.ctl_var*, %struct.ctl_var** @sys_var, align 8
  %26 = call %struct.ctl_var* @ctl_getitem(%struct.ctl_var* %25, i8** %6)
  store %struct.ctl_var* %26, %struct.ctl_var** %1, align 8
  %27 = icmp ne %struct.ctl_var* null, %26
  br i1 %27, label %28, label %87

28:                                               ; preds = %24
  %29 = load i32, i32* @EOV, align 4
  %30 = load %struct.ctl_var*, %struct.ctl_var** %1, align 8
  %31 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %28
  %36 = load %struct.ctl_var*, %struct.ctl_var** %1, align 8
  %37 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @INSIST(i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.ctl_var*, %struct.ctl_var** %1, align 8
  %45 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 1, i32* %47, align 4
  store i64 1, i64* %4, align 8
  br label %86

48:                                               ; preds = %28
  %49 = load %struct.ctl_var*, %struct.ctl_var** @ext_sys_var, align 8
  %50 = call %struct.ctl_var* @ctl_getitem(%struct.ctl_var* %49, i8** %6)
  store %struct.ctl_var* %50, %struct.ctl_var** %1, align 8
  %51 = load %struct.ctl_var*, %struct.ctl_var** %1, align 8
  %52 = icmp eq %struct.ctl_var* null, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @CERR_BADVALUE, align 4
  %55 = call i32 @ctl_error(i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @free(i32* %56)
  br label %197

58:                                               ; preds = %48
  %59 = load i32, i32* @EOV, align 4
  %60 = load %struct.ctl_var*, %struct.ctl_var** %1, align 8
  %61 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @CERR_UNKNOWNVAR, align 4
  %67 = call i32 @ctl_error(i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @free(i32* %68)
  br label %197

70:                                               ; preds = %58
  %71 = load %struct.ctl_var*, %struct.ctl_var** %1, align 8
  %72 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @CS_MAXCODE, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %73, %75
  %77 = add i64 %76, 1
  store i64 %77, i64* %3, align 8
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp ult i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @INSIST(i32 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load i64, i64* %3, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 1, i32* %85, align 4
  store i64 1, i64* %4, align 8
  br label %86

86:                                               ; preds = %70, %35
  br label %24

87:                                               ; preds = %24
  %88 = load i64, i64* %4, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %144

90:                                               ; preds = %87
  store i64 1, i64* %3, align 8
  br label %91

91:                                               ; preds = %107, %90
  %92 = load i64, i64* %3, align 8
  %93 = load i32, i32* @CS_MAXCODE, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ule i64 %92, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load i32*, i32** %8, align 8
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i64, i64* %3, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @ctl_putsys(i32 %104)
  br label %106

106:                                              ; preds = %102, %96
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %3, align 8
  br label %91

110:                                              ; preds = %91
  store i64 0, i64* %3, align 8
  br label %111

111:                                              ; preds = %140, %110
  %112 = load i64, i64* %3, align 8
  %113 = load i32, i32* @CS_MAXCODE, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %112, %114
  %116 = add i64 %115, 1
  %117 = load i64, i64* %9, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %111
  %120 = load i32*, i32** %8, align 8
  %121 = load i64, i64* %3, align 8
  %122 = load i32, i32* @CS_MAXCODE, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %121, %123
  %125 = add i64 %124, 1
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %119
  %130 = load %struct.ctl_var*, %struct.ctl_var** @ext_sys_var, align 8
  %131 = load i64, i64* %3, align 8
  %132 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %130, i64 %131
  %133 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %7, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = call i32 @ctl_putdata(i8* %135, i32 %137, i32 0)
  br label %139

139:                                              ; preds = %129, %119
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %3, align 8
  br label %111

143:                                              ; preds = %111
  br label %193

144:                                              ; preds = %87
  %145 = load i32*, i32** @def_sys_var, align 8
  store i32* %145, i32** %5, align 8
  br label %146

146:                                              ; preds = %154, %144
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ctl_putsys(i32 %152)
  br label %154

154:                                              ; preds = %150
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %5, align 8
  br label %146

157:                                              ; preds = %146
  %158 = load %struct.ctl_var*, %struct.ctl_var** @ext_sys_var, align 8
  store %struct.ctl_var* %158, %struct.ctl_var** %2, align 8
  br label %159

159:                                              ; preds = %189, %157
  %160 = load %struct.ctl_var*, %struct.ctl_var** %2, align 8
  %161 = icmp ne %struct.ctl_var* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i32, i32* @EOV, align 4
  %164 = load %struct.ctl_var*, %struct.ctl_var** %2, align 8
  %165 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %163, %166
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  br label %170

170:                                              ; preds = %162, %159
  %171 = phi i1 [ false, %159 ], [ %169, %162 ]
  br i1 %171, label %172, label %192

172:                                              ; preds = %170
  %173 = load i32, i32* @DEF, align 4
  %174 = load %struct.ctl_var*, %struct.ctl_var** %2, align 8
  %175 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %173, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %172
  %180 = load %struct.ctl_var*, %struct.ctl_var** %2, align 8
  %181 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.ctl_var*, %struct.ctl_var** %2, align 8
  %184 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @strlen(i8* %185)
  %187 = call i32 @ctl_putdata(i8* %182, i32 %186, i32 0)
  br label %188

188:                                              ; preds = %179, %172
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.ctl_var*, %struct.ctl_var** %2, align 8
  %191 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %190, i32 1
  store %struct.ctl_var* %191, %struct.ctl_var** %2, align 8
  br label %159

192:                                              ; preds = %170
  br label %193

193:                                              ; preds = %192, %143
  %194 = load i32*, i32** %8, align 8
  %195 = call i32 @free(i32* %194)
  %196 = call i32 @ctl_flushpkt(i32 0)
  br label %197

197:                                              ; preds = %193, %65, %53
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ctlsysstatus(...) #1

declare dso_local i32 @count_var(%struct.ctl_var*) #1

declare dso_local i32* @emalloc_zero(i64) #1

declare dso_local %struct.ctl_var* @ctl_getitem(%struct.ctl_var*, i8**) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ctl_error(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ctl_putsys(i32) #1

declare dso_local i32 @ctl_putdata(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ctl_flushpkt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
